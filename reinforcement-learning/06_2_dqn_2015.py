import numpy as np
import gym
from gym.envs.registration import register
import random
import tensorflow as tf
import dqn
from collections import deque
import matplotlib.pyplot as plt

env = gym.make("CartPole-v0")
env.max_episode_steps = 10000

input_size = env.observation_space.shape[0]
output_size = env.action_space.n

learning_rate = 1e-1
discount_rate = 1.5
REPLAY_MEMORY = 50000
results = []

'''
2013년 논문에서 해결하지 못한 문제가 2) Non-stationary Targets 이다.

2) Non-stationary Targets
이는 우리가 Q값을 업데이트할 때 사용하는 DQN 네트워크와 학습에 사용하는 DQN 네트워크가 같기 때문에 발생하는 문제이다.
그래서 간단히 두 네트워크를 분리하여 문제를 해결한다.
'''

def replay_train(main_dqn, target_dqn, train_batch):
    # Array of uninitialized (arbitrary) data of the given shape
    x_stack = np.empty(0).reshape(0, input_size)
    y_stack = np.empty(0).reshape(0, output_size)

    for state, action, reward, next_state, done in train_batch:
        # 현재 가지고 있는 W1, W2 값으로 예측한 Q값
        Q = main_dqn.predict(state)

        if done:
            Q[0, action] = reward
        else:
            Q[0, action] = reward + discount_rate * \
                np.max(target_dqn.predict(next_state)) # Q[new_state]에 해당하는 값을 추측할 때는 target-dqn 사용

        # 트레이닝할 Data 만들기
        # X 값 : state, Y 값 : Q값 배열
        x_stack = np.vstack([x_stack, state])
        y_stack = np.vstack([y_stack, Q])

    # 금방 들어온 데이터로 학습시키기
    return main_dqn.update(x_stack, y_stack) # main_dqn만 학습시킨다


def get_copy_var_ops(*, dest_scope_name="target", src_scope_name="main"):
    op_holder = []
    src_vars = tf.get_collection(
        tf.GraphKeys.TRAINABLE_VARIABLES, scope=src_scope_name)
    dest_vars = tf.get_collection(
        tf.GraphKeys.TRAINABLE_VARIABLES, scope=dest_scope_name)

    for src_var, dest_var in zip(src_vars, dest_vars):
        op_holder.append(dest_var.assign(src_var.value()))

    return op_holder


def bot_play(main_dqn):
    s = env.reset()
    reward_sum = 0
    while True:
        # env.render()
        a = np.argmax(main_dqn.predict(s))
        s, reward, done, _ = env.step(a)
        reward_sum += reward
        if done:
            print("Total score : {}".format(reward_sum))
            break


def main():
    max_episodes = 2000
    replay_buffer = deque()

    with tf.Session() as sess:
        main_dqn = dqn.DQN(sess, input_size, output_size, name="main") # 학습시킬 DQN 네트워크
        target_dqn = dqn.DQN(sess, input_size, output_size, name="target") # 고정값으로 사용할 네트워크
        tf.global_variables_initializer().run()

        # target 네트워크 = (학습시킬) main 네트워크 (복사)
        copy_ops = get_copy_var_ops(
            dest_scope_name="target", src_scope_name="main")
        sess.run(copy_ops)

        for i in range(max_episodes):
            #초기화
            state = env.reset()
            e = 1. / ((i / 10) + 1)
            step_count = 0
            done = False

            while not done:
                # e-greedy 방식으로 action 선택
                if np.random.rand(1) < e:
                    action = env.action_space.sample()
                else:
                    # 현재 가지고 있는 W로 Q predict
                    action = np.argmax(main_dqn.predict(state))

                next_state, reward, done, _ = env.step(action)

                # 안 끝나는 게 좋은 거니까 끝나면 reward -100
                # 그리고 학습은 시키지 않아
                if done:
                    reward = -10

                replay_buffer.append((state, action, reward, next_state, done))
                if len(replay_buffer) > REPLAY_MEMORY:
                    replay_buffer.popleft()

                state = next_state
                step_count += 1
                # 너무 오래 하지 않도록 중간에 잘라
                if step_count > 10000:
                    break

            print("Episode : {}, steps : {}".format(i, step_count))
            results.append(step_count)
            # if step_count > 10000:
            #     pass

            if i % 10 == 1:
                for _ in range(50):
                    minibatch = random.sample(replay_buffer, 10)
                    loss, _ = replay_train(main_dqn, target_dqn, minibatch) # 학습시킬 때 두 벌의 DQN이 따로 쓰인다는 것을 확인!
                print("Loss : ", loss)
                # 지금까지 학습된 W를 Q'에 사용
                sess.run(copy_ops)

        bot_play(main_dqn)
        plt.title("(2015) Total step count on each episode")
        plt.plot(range(len(results)), results)
        plt.show()


if __name__ == "__main__":
    main()
