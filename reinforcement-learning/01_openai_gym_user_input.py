'''
(1) 강화학습이란
강화학습은 강화이론을 머신러닝에 적용한 형태라고 이해하면 되는데 
알고리즘에 따라서 어떤 판단을 했을 때 돌아오는 Reward에 따라서 이 판단이 옳은 것이었는지를 학습하는 것이다.  

강화학습을 진행할 때는 크게 state, action, reward에 신경을 쓰면 된다. 
state는 현재의 상태를, action은 현재 state에 기반하여 다음에 취하게 될 동작을 나타낸다. reward는 action에 따라 얻게 되는 보상이다. 
Reward는 각 action마다 특정한 값으로 보상이 되는데, 양수/음수/0의 값이 돌아온다.

학습을 하는 동안 우리는 특정 state에서 어떤 action을 취했을 때 돌아오는 reward를 피드백 삼아 
앞으로 어떤 action을 취해야 reward를 최대화할 수 있는지 학습시키는 방법을 공부하게 될 것이다.  

(2) Playing OpenAI Gym Games
OpenAI Gym을 사용하려면 먼저 github에서 gym 라이브러리를 다운받고 아래와 같이 필요한 패키지들을 설치해야 한다. (리눅스 기준)

sudo apt install cmake
apt-get install zlib1g-dev
sudo -H pip install gym
'''

# 아래는 사용자 입력으로 Frozen Lake 게임을 동작하는 예제이다.

import gym  # OpenAI Gym을 사용하기 위해 라이브러리 import
from gym.envs.registration import register
import sys, tty, termios # 키 입력을 위한 라이브러리

# 키입력을 받기 위한 클래스
class _Getch:
  # 키값 리턴
  def __call__(self):
      fd = sys.stdin.fileno()
      old_setting = termios.tcgetattr(fd)
      try:
          tty.setraw(sys.stdin.fileno())
          ch = sys.stdin.read(1)
      finally:
          termios.tcsetattr(fd, termios.TCSADRAIN, old_setting)
      return ch
  
inkey = _Getch()

# OpenAI Gym에서 미리 정의되어 있는 action 매핑
LEFT = 0
DOWN = 1
RIGHT = 2
UP = 3

# 키보드 키와 상하좌우 동작을 매핑 - 상황에 맞게 임의로 변경 가능
arrow_keys = {
    'w' : UP,
    's' : DOWN,
    'd' : RIGHT,
    'a' : LEFT
}

# Gym 환경설정
# https://gym.openai.com/envs/ 에 들어가면 다양한 환경을 살펴볼 수 있다.
# Frozen-Lake : https://gym.openai.com/envs/FrozenLake-v0/ 
register(
    id = 'FrozenLake-v3', 
    entry_point='gym.envs.toy_text:FrozenLakeEnv', 
    kwargs={
        'map_name' : '4x4', # 4x4 크기의 맵
        'is_slippery' : False # 미끄러질 가능성 없음 (나중에 다룰 것)
    }
)

env = gym.make("FrozenLake-v3")
env.render() # Frozen Lake Map을 출력하기 위한 함수 호출


# 게임이 끝날 때까지 계속 반복
while True:
    # 키 값을 기다린다
    key = inkey()
    # 만약에 우리가 정의한 키 값이 아닌 경우, 게임 종료
    if key not in arrow_keys.keys():
        print("Game aborted!")
        break
    
    # 키값과 액션 매핑을 사용해서 상하좌우 중 어떤 행동을 취할지 리턴
    action = arrow_keys[key]
    # env.step(action) 은 결정한 행동을 실행한다는 의미이고,
    # 행동의 결과로 이동한 자리가 어딘지(state), 행동의 reward는 얼마인지(reward), 
    # 게임이 끝났는지: 구멍에 빠지거나 결승점에 도착하거나 (done), 그 밖의 정보 (info)가 리턴된다.
    state, reward, done, info = env.step(action)

    # 화면에 Frozen Lake 맵과 현재 위치가 어딘지 그림을 그려줌 (Frozen Lake는 콘솔에 출력)
    env.render()
    print("state : {0}, Action : {1}, Reward : {2}, Info : {3}".format(state, action, reward, info))

    # 게임이 끝났으면 Reward를 출력
    # Frozen lake는 결승점에 도착해야만 Reward 1을 받는다.
    if done :
        print("Finished with reward {0}".format(reward))
        break
