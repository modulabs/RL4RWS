#include "opencv2/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <iostream>
#include <opencv2/core/mat.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <math.h>
#include <opencv2/opencv.hpp>
#include "opencv2/features2d.hpp"
#include <vector>
#include <opencv/cv.h>
#include <fstream>
#include <csignal>
#include "matx.hpp"
#include <opencv2/core/core.hpp>
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc.hpp>

#define Q_BUFF_SIZE 4192
#define PI 3.1415926

class EdgeDetector {

private:

	// original image
	cv::Mat img;

	// 16-bit signed int image
	cv::Mat sobel;

	// Aperture size of the Sobel kernel
	int aperture;

	// Sobel magnitude
	cv::Mat sobelMagnitude;

	// Sobel orientation
	cv::Mat sobelOrientation;

public:

	EdgeDetector() : aperture(3) {}

	// Compute the Sobel
	void computeSobel(const cv::Mat& image) {

		cv::Mat sobelX;
		cv::Mat sobelY;

		// Compute Sobel
		cv::Sobel(image, sobelX, CV_32F, 1, 0, aperture);
		cv::Sobel(image, sobelY, CV_32F, 0, 1, aperture);

		// Compute magnitude and orientation
		cv::cartToPolar(sobelX, sobelY, sobelMagnitude, sobelOrientation);
	}

	// Get Sobel orientation
	cv::Mat getOrientation() {

		return sobelOrientation;
	}

};





double minimum(double a, double b);
class LineFinder {

private:

	// original image
	cv::Mat img;

	// vector containing the end points 
	// of the detected lines
	std::vector<cv::Vec4i> lines;


	// accumulator resolution parameters
	double deltaRho;
	double deltaTheta;

	int minVote;

	double minLength;

	double maxGap;

public:

	LineFinder() : deltaRho(1), deltaTheta(PI / 180), minVote(10), minLength(0.), maxGap(0.) {}

	void setMinVote(int minv);
	void setLineLengthAndGap(double length, double gap);

	std::vector<cv::Vec4i> findLines(cv::Mat& binary);

	std::vector<cv::Vec3f>findCircles(cv::Mat& binary);

	// Draw the detected lines on an image
	//int
	void drawDetectedLines(double* angle, cv::Mat &image, cv::Scalar color = cv::Scalar(0, 0, 255));

	std::vector<cv::Vec4i> removeLinesOfInconsistentOrientations(
		const cv::Mat &orientations, double percentage, double delta);
};










double minimum(double a, double b)
{
	if (a < b)
		return a;
	else
		return b;
}

void LineFinder::setMinVote(int minv) {

	minVote = minv;
}

// Set line length and gap
void LineFinder::setLineLengthAndGap(double length, double gap) {

	minLength = length;
	maxGap = gap;
}

// Apply probabilistic Hough Transform
std::vector<cv::Vec4i>LineFinder::findLines(cv::Mat& binary) {

	lines.clear();
	cv::HoughLinesP(binary, lines, deltaRho, deltaTheta, minVote, minLength, maxGap);

	return lines;
}

//int

void LineFinder::drawDetectedLines(double* angle, cv::Mat &image, cv::Scalar color) {

	// Draw the lines
	std::vector<cv::Vec4i>::const_iterator it2 = lines.begin();

	double abase, aheight, angle23, angle12;

	while (it2 != lines.end()) {

		cv::Point pt1((*it2)[0], (*it2)[1]);
		cv::Point pt2((*it2)[2], (*it2)[3]);

//if((*it2)[3] < 200)
//    continue; 

		int dis_x = abs((*it2)[0] - (*it2)[2]);
		int dis_y = abs((*it2)[1] - (*it2)[3]);

//		if (dis_x < dis_y)
//		{

				cv::line(image, pt1, pt2, color, 5);
				abase = pt2.x - pt1.x;
				aheight = pt2.y - pt1.y;
				angle23 = atan(aheight / abase);
				angle12 = angle23 * 180.0 / PI;
				printf("%02.2f   %f   %f\n", angle12, (*it2)[1], (*it2)[3]);
				*angle = angle12;
//		}

		++it2;

	}
}

std::vector<cv::Vec4i> LineFinder::removeLinesOfInconsistentOrientations(
	const cv::Mat &orientations, double percentage, double delta) {

	std::vector<cv::Vec4i>::iterator it = lines.begin();

	while (it != lines.end()) {

		// end points
		int x1 = (*it)[0];
		int y1 = (*it)[1];
		int x2 = (*it)[2];
		int y2 = (*it)[3];

		// line orientation + 90o to get the parallel line
		double ori1 = atan2(static_cast<double>(y1 - y2), static_cast<double>(x1 - x2)) + PI / 2;
		if (ori1 > PI) ori1 = ori1 - 2 * PI;

		double ori2 = atan2(static_cast<double>(y2 - y1), static_cast<double>(x2 - x1)) + PI / 2;
		if (ori2 > PI) ori2 = ori2 - 2 * PI;

		// for all points on the line
		cv::LineIterator lit(orientations, cv::Point(x1, y1), cv::Point(x2, y2));
		int i, count = 0;
		for (i = 0, count = 0; i < lit.count; i++, ++lit) {

			float ori = *(reinterpret_cast<float *>(*lit));

			// is line orientation similar to gradient orientation ?
			if (minimum(fabs(ori - ori1), fabs(ori - ori2)) < delta)
				count++;

		}

		double consistency = count / static_cast<double>(i);

		// set to zero lines of inconsistent orientation
		if (consistency < percentage) {

			(*it)[0] = (*it)[1] = (*it)[2] = (*it)[3] = 0;

		}

		++it;
	}

	return lines;
}
