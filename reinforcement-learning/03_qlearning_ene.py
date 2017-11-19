import numpy as np
import matplotlib.pyplot as plt
import gym
from gym.envs.registration import register
import random

'''
이번 강에서 다루는 것은 Q-테이블을 합리적으로 채워나가는 방식이라고 할 수 있다. 
한 지점에서 다음 지점으로 어떻게 움직일 것인가, 움직인 다음에 어떤 값으로 Q-테이블을 채워넣을 것인가 
Action과 Reward를 결정하는 방식에 대해서 설명하였다.

<< Exploit & Exploration >>

앞서 dummy Q-Learning에서는 한 state에서 다음 action을 결정할 때 1이 있으면 무조건 1을 따라가는 방식을 택하였다.
그래서 생긴 단점 중 하나는 무조건 아는 길로만 다니기 때문에 
게임 한번 시도할 때 성공점까지 가는 길을 딱 하나 밖에 못 찾는다는 것이다.
가는 길을 하나 찾았어도 또 다른, 더 좋은 방법이 있을 수 있으니까 
아는 길로만 가지 말고 새로운 루트를 개척해보자에서 시작하는 것이 바로 'Exploit & Exploration'의 개념이다.

한 state에서 다음 action을 선택할 때 1이 있으면 무조건 따라가던(무조건 Q-테이블에 따르던) 종전의 방식과 달리
랜덤 vs Q-테이블 중 하나를 그때그때 선택하는 것이다. 둘 중 하나를 선택하는 방법에도 여러가지가 있는데,
1) E-greedy : 랜덤한 수를 하나 골라서 그 수가 e보다 작으면 랜덤, 그렇지 않으면 Q-테이블 따르기 
    (예 e = 0.1의 경우 0.1의 확률로 랜덤)
2) decaying E-greedy : E-greedy와 큰 틀에서는 같지만, 
    e의 값을 iteration이 거듭될수록 작게 만들어 갈수록 랜덤에 의존하는 확률을 작게 만드는 방식 (e = 0.1/(i+1))
3) Random Noise : Q-테이블을 따르되, 그대로 쓰는 게 아니라 테이블 값에 노이즈를 섞는다.

<< Discounted Reward >>

위 세가지 방법으로 다음 action을 정하게 되면 이전과 달리 여러가지 갈림길이 나올 수 있는데,
문제는 reward를 항상 1로 주기 때문에 갈림길 상황에서 어느 한쪽을 랜덤으로 정할 수 밖에 없어진다.
그런데 갈림길이 생겼다는 건, 우리가 최단 거리를 찾을 수 있는 가능성이 생겼다는 것이기 때문에 
갈림길에서 action을 랜덤으로 선택한다는 것은 비효율적이다.
그럼 어떻게 해야할까? 멀리 돌아가야 하는 길에는 reward를 적게 주면 되지 않을까 해서 나온 것이 
Discounted Reward의 개념이다.

Discounted Reward는 말 그대로 성공점에서 한발자국 나갈 때마다 주는 reward를 
일정 정도씩 깎는 방식을 채택하는 것이다.
Q[state, action] = r + max(Q[new_state])인 것을 기억하고 
이전 reward에 r(0 <= r < 1)만큼을 곱해주면 많이 움직여서 다다른 state일수록 reward를 적게 갖게 될 것이다.
갈림길에서 움직일 수 있는 방향이 여러 방향이더라도 그 중 reward가 가장 큰 쪽으로 움직이면 
그것이 성공점에서 가장 가까운 지점이라고 가정해도 된다는 것이다.
'''

register(
    id='FrozenLake-v3',
    entry_point='gym.envs.toy_text:FrozenLakeEnv',
    kwargs={
        'map_name': '4x4',
        'is_slippery': False
    }
)

env = gym.make("FrozenLake-v3")

Q = np.zeros([env.observation_space.n, env.action_space.n])
num_episodes = 2000

rList = []
successRate = []
e = 0.1 # exploit & exploration

# action을 선택할 때 사용할 방식 선택
# 콘솔에서 1~3 중 원하는 숫자를 넣고 엔터를 치면 된다.
mode = input(
    "Select Mode : (1) e-greedy (2) decaying e-greedy (3) Random Noise (etc) Dummy ->  ")
r = 0.9 # discount rate


def rargmax(vector):
    # Return the maximum of an array or maximum along an axis
    m = np.amax(vector)
    # np.nonzero(True/False vector) => 최대값인 요소들만 걸러내
    indices = np.nonzero(vector == m)[0]
    return random.choice(indices)  # 그 중 하나 랜덤으로 선택


for i in range(num_episodes):
    state = env.reset()  # 리셋
    total_reward = 0  # 나중에 그래프를 그리기 위한 (성공하면 1, 실패하면 0)
    done = None

    while not done:
        rand = random.random()
        # e-greedy / decaying e-greedy 선택하면 random 값을 기준으로 랜덤/Q-table 선택
        if (mode == '1' and rand < e) or (mode == '2' and (rand < e / (i + 1))):
            action = env.action_space.sample() # 완전 랜덤 선택
        # Q-table에 노이즈 섞어(with discount)
        elif mode == '3':
            action = rargmax(
                Q[state, :] + np.random.random(env.action_space.n) / (i + 1))
        else:
            action = rargmax(Q[state, :])
        new_state, reward, done, _ = env.step(action)  # 해당 action 했을 때 결과

        # 이 다음 state의 reward보다 discount해서 더하면 한발짝 나갈 때마다 reward가 적어져서
        # 갈림길 선택의 기준으로 활용
        Q[state, action] = reward + r * np.max(Q[new_state, :])

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
