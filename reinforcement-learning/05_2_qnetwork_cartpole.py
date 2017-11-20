import numpy as np
import matplotlib.pyplot as plt
import gym
from gym.envs.registration import register
import random
import tensorflow as tf

learning_rate = 1e-1

env = gym.make("CartPole-v1")
env.max_episode_steps = 500

input_size = env.observation_space.shape[0]
output_size = env.action_space.n

# 네트워크 W
X = tf.placeholder(tf.float32, [None, input_size], name="input_x")
W1 = tf.get_variable("W1", shape=[
                     input_size, output_size], initializer=tf.contrib.layers.xavier_initializer())
Qpredict = tf.matmul(X, W1)
Y = tf.placeholder(shape=[None, output_size], dtype=tf.float32)

loss = tf.reduce_sum(tf.square(Y - Qpredict))
train = tf.train.AdamOptimizer(learning_rate=learning_rate).minimize(loss)

num_episodes = 2000
discount_rate = 0.9
result_list = []

with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    for i in range(num_episodes):
        s = env.reset()
        e = 1. / ((i / 10) + 1)
        step_count = 0
        done = False

        while not done:
            env.render()
            step_count += 1
            # 현재 state를 input 모양으로 변형
            x = np.reshape(s, [1, input_size])
            # 현재까지의 W 업데이트 값으로 Y값 추정
            Qs = sess.run(Qpredict, feed_dict={X: x})

            # e-greedy 방식으로 action 선택
            if np.random.rand(1) < e:
                a = env.action_space.sample()
            else:
                a = np.argmax(Qs)

            s1, reward, done, _ = env.step(a)

            # 안 끝나는 게 좋은 거니까 끝나면 reward -100
            if done:
                Qs[0, a] = -10
            else:
                # 그 다음 state를 input 모양으로 변형
                x1 = np.reshape(s1, [1, input_size])
                # 현재의 W를 바탕으로 새 state에서 Q값 추정
                Qs1 = sess.run(Qpredict, feed_dict={X: x1})
                # 받은 reward + 그 다음 state의 Q 최대값
                Qs[0, a] = reward + discount_rate * np.max(Qs1)

            # 현재 state와 업데이트한 Qs(action 별 Q값)로 W 업데이트
            sess.run(train, feed_dict={X: x, Y: Qs})

            # 다음 state로 이동
            s = s1

        result_list.append(step_count)
        print("Episode : {}, steps : {}".format(i, step_count))
