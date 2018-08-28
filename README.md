# 모두의 연구소 : RL4RWS (시즌3)

## 연구실 소개
RL4RWS 랩은 **임베디드와 강화학습을 접목**하여 실제 환경에서 작동하는 다양한 모델을 직접 구현해 보는것을 목표로 합니다. 
 
## 연구실 목표
임베디드 분야와 강화학습 분야로 나누어서 세미나 진행 합니다.  

시즌 3의 진행 목표는 `NVIDIA Jetson TX2 기반 자율주행 RC카`를 제작하는 것입니다. 이를 위해 강화학습 이론과 RC카 제작 및 제어에 필요한 이론들을 학습할 계획입니다.   
 

### 강화학습 및 딥러닝 세미나 
#### 강화학습

김성훈 교수 강좌를 기반으로 강화학습 기초 세미나를 진행하였습니다.  
[모두를 위한 RL 강좌 유투브 채널](https://www.youtube.com/watch?v=dZ4vw6v3LcA&list=PLlMkM4tgfjnKsCWav-Z2F-MMFRx-2gMGG)  
[모두를 위한 머신러닝/딥러닝 강의 페이지](https://hunkim.github.io/ml/)  

#### 딥러닝
RL4RWS 연구원들의 실제 구현 사례를 바탕으로 세미나를 진행하였습니다.  
1. 조아라 연구원 : Udacity Self-Driving Car Nano-Degree 프로젝트 경험 공유  
    - [Traffic Sign Classifier](https://github.com/ahracho/CarND-Traffic-Sign-Classifier-Project)
    - [자율주행 시뮬레이션](https://github.com/ahracho/CarND-Behavioral-Cloning-P3) 
    - [Object Detection](https://github.com/ahracho/CarND-Vehicle-Detection)

2. 황보찬 연구원 : Yolo v3를 이용한 얼굴검출 및 표정인식  
3. 김민규 연구원 : GoogleNet 이용한 시각장애인용 길안내 (물체인식 프로젝트)   


### 임베디드 플랫폼 구축 관련 세미나
**1. NVIDIA Jetson TX2 (조진제 연구원)**   
    - Jetpack 설치 안내  
    - Jetson-inference 구조에 대한 설명과 데모  
    - Deep Learning deployment with tensorRT  

**2. TF-Slim 분석** : 저수준의 텐서플로우 API를 간편하게 사용할 수 있는 고수준 경량 API  
    **<참고자료>**  
    - [TF-slim 시작하기](https://www.popit.kr/tf-slim-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0/)  
    - [TF-slim 분석 자료](./tf_slim)  
    - [TF-slim 예제 소스코드 (1) MNIST](https://github.com/socurites/tf-slim-tutorial)  
    - [TF-slim 예제 소스코드 (2) Dog Breed Classifier](https://github.com/socurites/dog-breed-classification.tf)  

**3. Tensorflow 활용한 YOLO**  
   **<참고자료>**  
    - [소스코드](./tf_yolo)  


### 센서 및 제어이론 관련 세미나
1. ROS 간단한 예제 설명 및 SLAM (이승진 연구원)  
2. PID 개론 (유지원 연구원)  
3. 최신 카메라 센서 동향 (장해강 연구원)  


### 참고자료
- [YOLOv2 On Jetson TX2](https://jkjung-avt.github.io/yolov2/)
- [YOLOv3 On Jetson TX2](https://jkjung-avt.github.io/yolov3/)
- [Jetson Race Car 예제](https://www.jetsonhacks.com/2016/01/26/jetson-racecar-part-3-esc-motor-control/)
- [버클리 강화학습 기반 RC카 github](https://github.com/gkahn13/gcg)  
- [TF-Slim](https://www.popit.kr/tf-slim-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0/)
- [NVIDIA Jetson TX2 - JetPack](https://developer.nvidia.com/embedded/jetpack)  
- [모두를 위한 머신러닝/딥러닝](https://hunkim.github.io/ml/)   