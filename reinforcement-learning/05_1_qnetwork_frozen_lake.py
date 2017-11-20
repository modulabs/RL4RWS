import numpy as np
import matplotlib.pyplot as plt
import gym
from gym.envs.registration import register
import random
import tensorflow as tf

'''
<< Q-Network >>
Q-테이블이 학습을 시키기에 효과적인 방법이긴 하지만, 가능한 state 수가 많아지거나
action이 많아지면 학습해야 할 Q-테이블의 크기가 급격하게 늘어나는 단점이 있다.
예를 들어, 80*80의 게임판에서 각 픽셀마다 표현할 수 있는 색이 검/흰 두가지만 하더라도
우리가 가정해야 하는 게임판의 종류는 2 ^ (80 * 80) 이 되어버린다.
즉, Q-테이블은 단순하고 직관적이지만 그만큼 확장성에 제약이 있다는 것이다. 

그럼 다양한 케이스를 처리하기 위해서 어떤 방법을 사용할 수 있을까? 
6강에서는 Q-Network를 가져왔다. 머신러닝에서 뉴런네트워크를 사용한 방식과 동일하다.

Layer을 지날 때 관계식 Y = w*X + b 을 계산하고 Y에 활성화 함수를 적용하여 다음 Layer로 전달한다.
이때 Q-Network에서의 input(X)은 state가 되고 output(Y)은 해당 state에서 각 action을 취할 때의 reward이다.

학습을 진행하면서 우리가 찾아야 하는 값은 오차를 가장 작게 하는 hidden layer의 weight과 bias이다. 

Q-table을 사용할 때는 테이블에 있는 값을 업데이트에 사용했는데,
Q-Network의 경우에는 현재 가지고 있는 w와 b 값을 토대로 계산된 Q값을 업데이트에 사용한다. 

오차는 관계식을 토대로 얻어낸 기대값 y'와 실제값 y의 차이를 제곱한 갑으로 정한다. 
즉, 우리는 min(sum((y - y')^2))인 weight을 찾아야 한다.

강의에서는 tensorflow를 활용해서 최적값을 우리가 직접 구현하는 것이 아니라 tensorflow 함수를 통해서 편하게 찾아낼 수 있게 하였다.
'''

"""
one_hot_encoder(state)
Frozen-Lake에서는 각 state를 0~15의 숫자로 표현하는데, 
Q-Network를 사용하여 강화학습을 구현할 때는 Y = W*X + b와 같은 산술 연산이 필요한 관계식을 적용하기 때문에 
state를 단순히 숫자 하나로 표현할 경우, 결과값이 input 정보를 충분히 담지 못한다.
그래서 one-hot encoding 이라는 방식을 사용하여 state를 표현하는데,
각 state는 0으로 초기화된 크기 16의 벡터에 표현하고자 하는 state만 1로 설정하여 표현한다. 

예를 들어, state 2를 표현하고자 한다면,
[0 0 1 0 0 ...] 과 같이 표현할 수 있다.

one_hot_encoder()에서는 기본행렬(대각선만 1이고 모두 0인 행렬)에서 state에 해당하는 행만 리턴하여 one-hot encoding을 구현하였다.
"""
def one_hot_encoder(state):
    return np.identity(16)[state:state + 1]  # 해당 state값만 1인 16 크기 행렬 리턴

env = gym.make("FrozenLake-v0")
input_size = env.observation_space.n
output_size = env.action_space.n
learning_rate = 0.7


# 네트워크 설정 
# 실제 값이 들어가지 않아, 어떤 모양으로 학습할지만 설정
X = tf.placeholder(shape=[1, input_size], dtype=tf.float32) # placeholder는 데이터 input이 들어가는 자리
W = tf.Variable(tf.random_uniform([input_size, output_size], 0, 0.01)) # Variable은 학습시킬 변수의 자리

# 이번 강에서는 활성화 함수 없이 단순곱으로 구현
Qpredict = tf.matmul(X, W) # (1, input_size) X (input_size, output_size) = (1, output_size)
Y = tf.placeholder(shape=[1, output_size], dtype=tf.float32)
loss = tf.reduce_sum(tf.square(Y-Qpredict)) # 오차 제곱의 합
train = tf.train.GradientDescentOptimizer(learning_rate=learning_rate).minimize(loss) # 경사하강법을 사용하여 오차를 최소화하는 방향으로 학습을 시키겠다

# 여기까지는 학습에 사용될 관계식을 설정하는 것까지이고,
# sess.run()을 실행해야 실제로 계산을 수행한다.

num_episodes = 1000
r = 0.9
rList = []

with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    for i in range(num_episodes):
        s = env.reset() # 초기 state 설정
        e = 1. / ((i/50) + 10)
        rAll = 0
        done = False
        local_loss = []

        while not done :
            # 현재 위치에서 X * W로 output(action별 reward)을 구함
            # 현재 가지고 있는 W값에 기반해서 결과 예측
            Qs = sess.run(Qpredict, feed_dict={X:one_hot_encoder(s)}) # feed_dict은 placeholder에 실제 값을 넣기 위해 설정하는 옵션
            
            if np.random.rand(1) < e:
                a = env.action_space.sample()
            else :
                a = np.argmax(Qs) # 예측값에서 가장 큰 기대값을 다음 action으로 선택
            
            s1, reward, done, _ = env.step(a) # s1: 다음 state
            if done:
                Qs[0, a] = reward
            else:
                # 새로운 위치에서 예측한 Q값
                # 기존에 Q테이블을 사용하던 값들을 X*W로 예측함
                Qs1 = sess.run(Qpredict, feed_dict={X:one_hot_encoder(s1)})
                Qs[0:a] = reward + r * np.max(Qs1)

            # 기존 위치 s에서 예측값에 따라서 어떤 행동을 해서 결과와 reward가 나왔음
            # 그 결과를 학습에 반영, s에서 업데이트된 (reward가 반영된) Qs가 나오도록 학습시킴
            sess.run(train, feed_dict={X:one_hot_encoder(s), Y:Qs})
            rAll += reward
            s = s1
        rList.append(rAll)

print("Success Rate : ", str(sum(rList)/num_episodes))
plt.plot(range(len(rList)), rList)
plt.show()
