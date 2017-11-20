import tensorflow as tf
import numpy as np

"""
DQN 네트워크 구성요소 및 관련 함수를 포함한 클래스
"""
class DQN:
    def __init__(self, session, input_size, output_size, name="main"):
        self.session = session
        self.input_size = input_size
        self.output_size = output_size
        self.net_name = name
        self._build_network()

    # 네트워크를 위한 식 만들기 (레이어는 어떻게 구성되어 있으며, 활성화 함수는 어떤 것을 사용할지)
    def _build_network(self, h_size=6, l_rate=1e-1):
        with tf.variable_scope(self.net_name):
            self._X = tf.placeholder(tf.float32, [None, self.input_size], name="input_x")

            W1 = tf.get_variable("W1", shape=[
                                self.input_size, h_size], initializer=tf.contrib.layers.xavier_initializer())
            layer1 = tf.nn.tanh(tf.matmul(self._X, W1))

            W2 = tf.get_variable("W2", shape=[
                                h_size, self.output_size], initializer=tf.contrib.layers.xavier_initializer())
            self._Qpredict = tf.matmul(layer1, W2)

        self._Y = tf.placeholder(shape=[None, self.output_size], dtype=tf.float32)
        self._loss = tf.reduce_mean(tf.square(self._Y - self._Qpredict))
        self._train = tf.train.AdamOptimizer(learning_rate=l_rate).minimize(self._loss)

    # x에 대한 y 결과 리턴 (2단계 네트워크 지나온 결과) -> 관계식을 적용한 결과
    def predict(self, state):
        x = np.reshape(state, [1, self.input_size])
        return self.session.run(self._Qpredict, feed_dict={self._X:x})

    # 들어온 데이터를 바탕으로 W 업데이트 (학습 시킨다)
    def update(self, x_stack, y_stack):
        return self.session.run([self._loss, self._train], feed_dict={self._X:x_stack, self._Y:y_stack})
