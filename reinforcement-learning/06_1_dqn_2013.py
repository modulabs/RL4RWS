import numpy as np
import gym
from gym.envs.registration import register
import random
import tensorflow as tf
import dqn
from collections import deque
import matplotlib.pyplot as plt

env = gym.make("CartPole-v1")
env.max_episode_steps = 500

input_size = env.observation_space.shape[0]
output_size = env.action_space.n

learning_rate = 1e-1
discount_rate = 0.9
REPLAY_MEMORY = 50000
results = []

'''
지난 강의에서 소개한 DQN에는 두가지 문제가 있어 결과가 최상으로 나오지 않는다.
1) Correlation between samples
2) Non-stationary Targets

1) Correlation between samples
학습 시에 인접해 있는 데이터를 사용할 경우, 큰 그림에서 바라본 데이터의 추이와 다른 잘못된 관계식을 유도할 수 있다. 
우리가 지난 강의에서 작성했던 소스코드는 한번 움직일 때마다 얻어진 데이터 결과를 학습에 사용하였기 때문에
학습에 사용한 데이터들 간의 상관관계가 강하다고 추측할 수 있다. 
2013년 버전에서는 이 효과를 상쇄하기 위해서 2가지 방법을 사용하는데 
하나는 레이어를 하나 더 만드는 것이고, 또 하나는 버퍼에서 샘플링을 하여 학습에 사용하는 것이다.
'''

def simple_replay_train(DQN, train_batch):
    # Array of uninitialized (arbitrary) data of the given shape
    x_stack = np.empty(0).reshape(0, DQN.input_size)
    y_stack = np.empty(0).reshape(0, DQN.output_size)

    for state, action, reward, next_state, done in train_batch:
        # 현재 가지고 있는 W1, W2로 예측한 Q값
        Q = DQN.predict(state)

        if done:
            Q[0, action] = reward
        else:
            Q[0, action] = reward + discount_rate * \
                np.max(DQN.predict(next_state))

        # 트레이닝할 Data 만들기
        # X 값 : state, Y 값 : Q값 배열
        x_stack = np.vstack([x_stack, state])
        y_stack = np.vstack([y_stack, Q])

    # 금방 들어온 데이터로 학습시키기
    return DQN.update(x_stack, y_stack)


def bot_play(main_dqn):
    s = env.reset()
    reward_sum = 0
    while True:
        env.render()
        a = np.argmax(main_dqn.predict(s))
        s, reward, done, _ = env.step(a)
        reward_sum += reward
        if done:
            print("Total score : {}".format(reward_sum))
            break


def main():
    max_episodes = 2000
    replay_buffer = deque() # 표본을 저장할 버퍼, 이곳에서 샘플링을 하여 학습에 사용한다.

    with tf.Session() as sess:
        main_dqn = dqn.DQN(sess, input_size, output_size, name="main") # DQN 클래스는 Q-Network의 속성과 멤버함수가 작성되어 있다. ( dqn.py )
        tf.global_variables_initializer().run()

        for i in range(max_episodes):
            state = env.reset()
            e = 1. / ((i / 10) + 1)
            step_count = 0 # 한 번 테스트에 최대 몇번까지 움직였는지 
            done = False

            while not done:
                # e-greedy 방식으로 action 선택
                if np.random.rand(1) < e:
                    action = env.action_space.sample()
                else:
                    # 현재 가지고 있는 W로 Q predict
                    action = np.argmax(main_dqn.predict(state)) # 현재 state에서 현재 가지고 있는 W, b 값으로 Q 계산 후 action 선택

                next_state, reward, done, _ = env.step(action)

                # 안 끝나는 게 좋은 거니까 끝나면 reward -10
                # 그리고 학습은 시키지 않아
                if done:
                    reward = -10

                # 현재 가지고 있는 W 값으로 얻은 결과를 쌓아
                replay_buffer.append((state, action, reward, next_state, done)) # 버퍼에 input과 output을 같이 저장
                if len(replay_buffer) > REPLAY_MEMORY: # 50000개까지만 저장하고 남으면 오래된 데이터 삭제
                    replay_buffer.popleft()

                state = next_state
                step_count += 1 
                # 너무 오래 하지 않도록 중간에 잘라
                if step_count > 10000:
                    break

            print("Episode : {}, steps : {}".format(i, step_count))
            results.append(step_count)

            if i % 10 == 1: # 10번 테스트 중 1번만 학습시킨다
                for _ in range(50):
                    minibatch = random.sample(replay_buffer, 10) # 버퍼에서 10개를 샘플링한다.
                    loss, _ = simple_replay_train(main_dqn, minibatch) # 샘플링한 10개를 바탕으로 학습을 시킨다
                print("Loss : ", loss)

        bot_play(main_dqn) # 최종 결과로 마지막 게임 한판
        plt.title("(2013) Total step count on each episode")
        plt.plot(range(len(results)), results)
        plt.show()


if __name__ == "__main__":
    main()
