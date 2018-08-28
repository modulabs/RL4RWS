# -*- coding: utf-8 -*-
__author__ = 'socurites@gmail.com'

"""
이미지 데이터를 학습/평가를 위한 TFRecord 포맷으로 변환

# Ref: TensorFlow-Slim image classification library
       https://github.com/tensorflow/models/tree/master/slim
"""

import tensorflow as tf
import tensorflow.contrib.slim as slim

"""
# 훈련 데이터셋의 구조
raw_data/
  |- flowers/
       |- images/
           |- class-1/
           |- class-2/
           |- class-3/
           |- class-4/
           |-- ...

# MNITS의 경우
raw_data/
  |- mnist/
       |- images/
           |- 0/
           |- 1/
           |- 2/
           |- 3/
           |-- ...
"""

# 아래 코드는 flowers/ 데이터를 다운로드 후 TFRecord로 변환하는 코드임
# 아래 코드를 약간 변형해서 사용
# https://github.com/tensorflow/models/blob/master/slim/download_and_convert_data.py

from datasets import convert_tf_record

FLAGS = tf.app.flags.FLAGS

tf.app.flags.DEFINE_string(
    'dataset_name',
    #'mnist',
    'dog',
    #'flowers',
    'The name of the dataset prefix.')

tf.app.flags.DEFINE_string(
    'dataset_dir',
    #'/tmp/raw_data/mnist',
    '/tmp/raw_data/dog',
    #'/tmp/raw_data/flowers',
    #'./raw_data/mnist',
    #'./raw_data/dog',
    'A directory containing a set of subdirectories representing class names. Each subdirectory should contain PNG or JPG encoded images.')

tf.app.flags.DEFINE_integer(
    'num_shards',
    5,
    'A number of sharding for TFRecord files(integer).')

tf.app.flags.DEFINE_float(
    'ratio_val',
    0.2,
    'A ratio of validation datasets for TFRecord files(flaot, 0 ~ 1).')


def main(_):
    if not FLAGS.dataset_name:
        raise ValueError('You must supply the dataset name with --dataset_name')
    if not FLAGS.dataset_dir:
        raise ValueError('You must supply the dataset directory with --dataset_dir')

    convert_tf_record.run(FLAGS.dataset_name, FLAGS.dataset_dir, FLAGS.num_shards, FLAGS.ratio_val)


if __name__ == '__main__':
    tf.app.run()
