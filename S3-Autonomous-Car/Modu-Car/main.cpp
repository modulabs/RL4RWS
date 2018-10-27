#include "CommonIncludes.h"
#include <stdbool.h>

//// add pc for pwm
#include<stdio.h>
#include<string.h>       //strlen
#include<stdlib.h>       //strlen
#include<sys/socket.h>
#include<arpa/inet.h>    //inet_addr
#include<unistd.h>       //write
#include<pthread.h>      //for threading , link with lpthread

// servoExample.cpp
#include <termios.h>
#include <time.h>
#include <JHPWMPCA9685.h>


int servoMin = 300 ;
int servoMax = 500 ;

int pwm_value = 400;
//int servo_value = 300;
int servo_value = 400;
int servo_degree = 45;

/*
int map ( int x, int in_min, int in_max, int out_min, int out_max) 
{
    int toReturn =  (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min ;
    // For debugging:
    // printf("MAPPED %d to: %d\n", x, toReturn);
    return toReturn ;
}
*/

//// add pc for pwm





using namespace std;
using namespace cv;

double angle = 0;


int main(void)
{


    PCA9685 *pca9685 = new PCA9685() ;
    int err = pca9685->openPCA9685();
    if (err < 0){
        printf("Error: %d", pca9685->error);
    }


                servo_degree = 45;
                //pca9685->setPWM(0,0,map(servo_degree,0,90,servoMin, servoMax));
                pca9685->setPWM(0,0,servoMin) ;
                printf("%d\n", servo_degree);

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////


	
	VideoCapture capture(1); //1?? Ä«?Þ¶??? Ä¸??
	if (!capture.isOpened())
	{
		printf("video capture is failed");
	}
	
	Mat frame, hsvImage, dstImage;
	Scalar hsv_yellow_min = cvScalar(0, 31, 119);      //(0, 255, 255)   (0, 31, 119);
	Scalar hsv_yellow_max = cvScalar(122, 255, 255);    //(204, 255, 255)   (122, 255, 255);
	
	while (1)
	{

	
		capture >> frame; //Ä«?Þ¶ó¿¡¼? ??Àº ??À» Frame?? ??À½
	
		cvtColor(frame, hsvImage, COLOR_BGR2HSV); // frame -> hsvImage?? HSV??
		inRange(hsvImage, hsv_yellow_min, hsv_yellow_max, dstImage);//hsv->dstImage ?Ã·?Á¦??
		cv::medianBlur(dstImage, dstImage, 5);
		EdgeDetector ed;
		ed.computeSobel(dstImage);
		cv::Mat contours;
		cv::Canny(dstImage, contours, 125, 350);
		//cv::Canny(dstImage, contours, 50, 350);

		// Create LineFinder instance
		LineFinder Id;
		// ?? ???Ì¿? ???? ??Á¤
		//Id.setLineLengthAndGap(100, 20); // 100 , 20
		//Id.setLineLengthAndGap(100, 10); // 100 , 20
		//Id.setLineLengthAndGap(100, 5); // 100 , 20
		Id.setLineLengthAndGap(60, 5); // 100 , 20 

		//Id.setMinVote(60); // ??Ç¥ ?Ö¼? ???? ??Á¤ 60
		//Id.setMinVote(50); // ??Ç¥ ?Ö¼? ???? ??Á¤ 60
		//Id.setMinVote(40); // ??Ç¥ ?Ö¼? ???? ??Á¤ 60
		//Id.setMinVote(30); // ??Ç¥ ?Ö¼? ???? ??Á¤ 60
		Id.setMinVote(20); // ??Ç¥ ?Ö¼? ???? ??Á¤ 60


		// Detect lines
		std::vector<cv::Vec4i> li = Id.findLines(contours);

		// Á¶?Ç¿? ???? ?Ê´? ?? Á¦??
		//Id.removeLinesOfInconsistentOrientations(ed.getOrientation(), 0.4, 0.1);
		Id.removeLinesOfInconsistentOrientations(ed.getOrientation(), 0.9, 0.9);


		Id.drawDetectedLines(&angle, frame);

		imshow("frame", frame);
		imshow("contours", contours);
		

                //pwm_value
                //if(++servo_degree > 90)
                //    servo_degree = 90;
                //pca9685->setPWM(0,0,map(servo_degree,0,90,servoMin, servoMax));
                
                ////if((angle < -45) || (angle > 45))
                

                //if(++servoMin > servoMax)
                //    servo_degree = servoMax;
                ////pca9685->setPWM(0,0,servoMin) ;
                ////printf("%d\n", servo_degree);

		cvWaitKey(1);
	}
	return 0;

		
}
