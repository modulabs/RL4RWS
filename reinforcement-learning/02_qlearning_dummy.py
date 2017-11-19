import numpy as np
import matplotlib.pyplot as plt
import gym
from gym.envs.registration import register
import random

'''
<< Q-Table >>
Q-learning에서는 앞으로 어떤 action을 취할지 결정하기 위해서 Q-table을 사용하는데,
Q-table은 맵과 같은 모양(Frozen-Lake의 경우 4x4)으로 만들어지며
각 칸에는 해당 칸에서 각각의 action을 취할 때 기대하는 reward 값으로 채워진다.
(한 state에서 취할 수 있는 action이 상하좌우 4개이기 때문에 각 칸마다 4개의 값이 필요하다)

    action |  L  |  D  |  R  |  U |
state
-----------------------------------
0          |     |     |     |    |
-----------------------------------
1          |     |     |     |    |
-----------------------------------
2          |     |     |     |    |
-----------------------------------
3          |     |     |     |    |
-----------------------------------
...        |     |     |     |    |
-----------------------------------

Q-learning을 진행하면서 Q-table의 각 reward 값을 업데이트 하여 최상의 결과값을 리턴할 수 있도록 해야한다.
2강에서는 Q-learning의 알고리즘을 제외하고 Q-table이 업데이트되는 법에 대해서 이해하도록 한다.

<< Q-table 업데이트 방식 >>
-------------------------
|  0  |  1  |  2  |  3  |
-------------------------
|  4  |  5  |  6  |  7  |
-------------------------
|  8  |  9  |  10 |  11 |
-------------------------
|  12 |  13 |  14 |  15 |<-Goal
-------------------------

Dummy Q-learning은 0으로 채워놓은 Q-테이블에서 시작해서 각 state에서 취할 action을 랜덤으로 선택한다.
(상하좌우 모두 reward가 0이기 때문에)

Frozen-Lake에서는 결승점에 도달할 때만 reward 1이 주어지기 때문에 결승점에 도착하기 전에는
reward는 무조건 0이 리턴된다. action은 랜덤으로 정해지기 때문에 보통 구멍에 빠져서 게임이 종료되는 상황이 
반복 되다가 우연히 결승점에 다다르면 그제서야 reward가 1이 주어진다. 

그럼 학습하는 agent는 이 전 칸에서 어떤 action(예를 들어 14번칸에서 오른쪽)을 하면 결승점에 다다른다는 것을
알게 된다. 그럼 이 전 칸의 Q-table을 업데이트 할 수 있다(14번칸에서 오른쪽의 값을 1로 업데이트).
이처럼 Q-table은 우연히 결승점에 도착한 상황을 토대로 시작점까지 거꾸로 거슬러 올라가면서 Q값을 업데이트하는
방식을 사용한다. (결승점에 도착하기 위해서는 14번에서 오른쪽으로 가야한다. 14번에 다다르기 위해서는 
10번에서 아래로 가야한다. 10번에 가기 위해서는 ... ) 이런 알고리즘을 식으로 표현하면 아래와 같다.

Q[state, action] = reward + max(Q[new_state])

<< Dummy Q-learning >>
2강의 Dummy Q-learning에서는 1이 채워지지 않는 칸에서 action이 랜덤으로 정해지기 때문에 
갈림길의 경우에는 랜덤으로 돌아다니다가 어떤 길로 우연히 처음 들게 되었는지에 따라 Q-테이블의 모양이 달라지게 된다.
한 state의 여러 action 중에서 1 값을 갖는 건 무조건 하나일 수 밖에 없다.
일단 1이 채워지면 그 다음부터는 max값을 따라서 1이 채워진 방향으로만 지나갈 것이기 때문이다.
또한, 아무리 빠른 지름길이 있더라도, 1이 채워지지 않게 되면 그 길로 들어서지 못하게 되기 때문에 성공하더라도 최단거리일 가능성은 낮다.
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

# Q-table 0으로 초기화
Q = np.zeros([env.observation_space.n, env.action_space.n]) # (16,4) : 4*4 map + 상하좌우 4개
num_episodes = 1000

rList = []
successRate = []

def rargmax(vector) :
    m = np.amax(vector) # Return the maximum of an array or maximum along an axis (0 아니면 1)
    indices = np.nonzero(vector == m)[0] # np.nonzero(True/False vector) => 최대값인 요소들만 걸러내
    return random.choice(indices) # 그 중 하나 랜덤으로 선택


for i in range(num_episodes) : # 학습을 num_episodes 만큼 시키면서 업데이트
    state = env.reset() # 리셋
    total_reward = 0 # 나중에 그래프를 그리기 위한 (성공하면 1, 실패하면 0)
    done = None

    while not done: # 게임 한판
        action = rargmax(Q[state, :]) # 현재 위치에서 상하좌우 중 가장 reward가 높은 것 선택
                                      # 다음 action 선택
        new_state, reward, done, _ = env.step(action) # 해당 action 했을 때 결과

        Q[state, action] = reward + np.max(Q[new_state, :]) # 거슬러 온다는 컨셉 
                                                            # 이 다음 위치까지 쌓인 reward를 내가 받는다
        total_reward += reward
        state = new_state
        
    rList.append(total_reward) # 이번 게임에서 reward가 0인지 1인지
    successRate.append(sum(rList)/(i+1)) # 지금까지의 성공률


print("Final Q-Table")
print(Q)
print("Success Rate : ", successRate[-1])

plt.plot(range(len(successRate)), successRate) # 성공률 그래프
plt.plot(range(len(rList)), rList) # reward 그래프
plt.show()
