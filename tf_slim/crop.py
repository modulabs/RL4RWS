# -*- coding: utf-8 -*-

import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
from xml.dom import minidom

__author__ = 'socurites@gmail.com'

"""
이미지 Crop
"""

#root_dir = '/home/itrocks/Backup/Data/StandfordDogs'
#target_image_dir = '/home/itrocks/Git/Tensorflow/dog-breed-classification.tf/raw_data/dog/images'
#root_dir = './raw_data/'
root_dir = '/tmp/raw_data/'
#target_image_dir = './raw_data/dog/images'
target_image_dir = '/tmp/raw_data/dog/images'

root_image_dir = os.path.join(root_dir, 'Images')
root_annotation_dir = os.path.join(root_dir, 'Annotation')



def parse_annotation(image_dir, image):
  annotation_file = image.split('.')[0]
  annotatoin_path = os.path.join(root_annotation_dir, image_dir, annotation_file)
  doc = minidom.parse(annotatoin_path)
  xmin = (doc.getElementsByTagName("xmin")[0]).firstChild.data
  ymin = (doc.getElementsByTagName("ymin")[0]).firstChild.data
  xmax = (doc.getElementsByTagName("xmax")[0]).firstChild.data
  ymax = (doc.getElementsByTagName("ymax")[0]).firstChild.data
  return int(xmin), int(ymin), int(xmax), int(ymax)


image_dirs = os.listdir(root_image_dir)
for image_dir in image_dirs:
  images = os.listdir(os.path.join(root_image_dir, image_dir))

  for image in images:
    xmin, ymin, xmax, ymax = parse_annotation(image_dir, image)

    jpg = cv2.imread(os.path.join(root_image_dir, image_dir, image))
    height, width, channels = jpg.shape

    roi = jpg[ymin:ymax, xmin:xmax]
    #print(os.path.join(target_image_dir, image_dir, image))

    if not os.path.exists(os.path.join(target_image_dir, image_dir)):
      os.makedirs(os.path.join(target_image_dir, image_dir))

    cv2.imwrite(os.path.join(target_image_dir, image_dir, image), roi)

    # rect = plt.Rectangle((xmin, ymin), xmax - xmin,
    #                      ymax - ymin, fill=False,
    #                        linewidth=3.5)
    # plt.gca().add_patch(rect)
    #
    # plt.imshow(jpg)
    # plt.show()
