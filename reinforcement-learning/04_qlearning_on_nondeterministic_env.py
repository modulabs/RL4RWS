import numpy as np
import matplotlib.pyplot as plt
import gym
import random

'''
<< Q-Learning on Stochastic World >>
이번 강에서는 Stochastic / Nondeterministic한 환경에서의 Q-Learning 방식을 소개한다.

Deterministic하다는 것은 어떤 함수가 무조건 parameter에 따라 결과가 결정된다는 의미이다.
즉, 같은 인자에 같은 결과가 나온다는 것. 앞서서 우리가 가정했던 Frozen Lake의 환경은
입력한 action 그대로 다음 state가 결정되는 상황이었다. 

그에 반해 non-deterministic한 환경에서는 입력과 관계없이 랜덤한 결과가 나온다.
gym에서 is_slippery 값을 True로 설정하게 되면 호수에서 움직일 때 미끄러져서 action과 무관하게
다음 state가 결정된다. 그렇기 때문에 이전 시간까지 우리가 Q-테이블을 채우는 방식을 그대로 가져오면
성공률이 현저하게 떨어지게 된다. Q-테이블은 내가 그대로 움직일 것을 가정하고 최대 reward 값을 리턴하는데
실제로 나는 그 방향대로 움직이지 않을 것이기 때문이다.

그렇다면 이런 상황에서 Q-테이블은 쓸모가 없어지는 것인가?

가끔씩 action대로 움직이는 경우도 발생하기 때문에 Q-table을 완전히 무시하는 것도 비효율적일 수 있다. 
그래서 제안하는 것이 Q-테이블을 보되, 업데이트할 때 다음 state의 reward를 적게 반영하는 것이다.
Q[state, action] = r + max(Q[new_state])
이 식은 내가 원하는대로 움직이는 것을 가정한 식이기 때문에 non-deterministic 상황에서는 Q[state] 값을 왜곡하므로
이 부분이 반영되는 비율을 적게 하고, 현재의 값을 많이 반영하면, Q-table 값을 어느정도 보정할 수 있다.
보정하는 비율을 learning rate라고 하고 Q값 업데이트는 아래와 같이 한다.
Q[state] = (1-a)*Q[state] + a*(r + Q[new_state])
'''

env = gym.make("FrozenLake-v0") # v3에서 is_slippery = true 로 한 것과 같은 환경
# (16,4) : 4*4 map + 상하좌우 4개
Q = np.zeros([env.observation_space.n, env.action_space.n])
num_episodes = 2000

rList = []
successRate = []

e = 0.2
learning_rate = 0.8
r = 0.9


def rargmax(vector):
    # Return the maximum of an array or maximum along an axis
    m = np.amax(vector)
    # np.nonzero(True/False vector) => 최대값인 요소들만 걸러내
    indices = np.nonzero(vector == m)[0]
    return random.choice(indices)  # 그 중 하나 랜덤으로 선택


for i in range(num_episodes):
    state = env.reset()  # 현재위치로 리셋 0부터 시작하겠지
    total_reward = 0  # 나중에 그래프를 그리기 위한 (성공하면 1, 실패하면 0)
    done = None

    while not done:
        # random noise 방식으로 action 선택
        action = rargmax(
            Q[state, :] + np.random.random(env.action_space.n) / (i + 1))
        new_state, reward, done, _ = env.step(action)  # 해당 action 했을 때 결과

        Q[state, action] = (1 - learning_rate) * Q[state, action] + \
            learning_rate * (reward + r * np.max(Q[new_state, :]))

        total_reward += reward
        state = new_state

    rList.append(total_reward)
    successRate.append(sum(rList) / (i + 1))

print("Final Q-Table")
print(Q)
print("Success Rate : ", successRate[-1])
plt.plot(range(len(rList)), rList)
plt.plot(range(len(successRate)), successRate)
plt.show()
