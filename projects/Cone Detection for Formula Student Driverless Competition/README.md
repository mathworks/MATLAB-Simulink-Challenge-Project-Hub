Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Cone%20Detection%20for%20Formula%20Student%20Driverless%20Competition&tfa_2=248)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Cone%20Detection%20for%20Formula%20Student%20Driverless%20Competition&tfa_2=248)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/coneDetection.png"  width=500 /></td>
<td><p><h1>Cone Detection for Formula Student Driverless Competition</h1></p>
<p>Develop a cone detection algorithm for Formula Student Driverless competition. </p>
</table>

## Motivation

The ability to detect cones in the scene is crucial for autonomous driving applications, such as autonomous racing, as it enables the vehicle to navigate through a course safely and efficiently. In the Formula Student driverless competitions, the teams are required to navigate through a series of cones, and detecting the cones accurately can give the team a competitive edge. In this project, students will learn how to use MATLAB® and Simulink® to detect cones in a virtual environment, which can help them gain valuable experience in autonomous driving. 

## Project Description

In this project, you will use the [Generate Skidpad Test](https://www.mathworks.com/help/vdynblks/ug/generate-skidpad-test-course.html) model introduced in R2023a in the [Vehicle Dynamics Blockset™](https://www.mathworks.com/products/vehicle-dynamics.html). The skidpad model includes a reference path, driver, vehicle, and visualization aides. The vehicle’s dynamics response can be visualized using photorealistic 3D scenes created with Unreal Engine in the Simulation 3D Viewer. 

Suggested Steps:
1.	Become familiar with the [Generate Skidpad Test](https://www.mathworks.com/help/vdynblks/ug/generate-skidpad-test-course.html)  example. To get an introduction to the Vehicle Dynamics Blockset™, watch this video: [What Is Vehicle Dynamics Blockset?](https://www.mathworks.com/videos/what-is-vehicle-dynamics-blockset-1585052447664.html)
2.	Add sensors blocks available in the Automated Driving Toolbox™ to output the camera view. For example, the [Simulation 3D Camera](https://www.mathworks.com/help/driving/ref/simulation3dcamera.html) block provides an interface to a camera with a lens in the 3D simulation environment. Using this camera sensor, you can capture a large set of camera images.  

3.	Develop an algorithm to detect the cones in the 3D scene. You can use a variety of techniques to perform object detection. Popular deep learning–based approaches using convolutional neural networks (CNNs), such as R-CNN and YOLO v2, automatically learn to detect objects within images.
4.	Implement this algorithm in the Simulink model to verify that your object detection algorithm can detect cones when the at a minimum vehicle velocity at 30 km/hr. Calculate the precision and efficiency of your algorithm.

Advanced project work:
1.	Deploy your trained network to a Formula Student car and run it during the track testing. For example, you can deploy the network to an NVIDIA Jetson with MathWorks tools. See the [GPU Coder™ Support Package for NVIDIA GPUs](https://www.mathworks.com/matlabcentral/fileexchange/68644-matlab-coder-support-package-for-nvidia-jetson-and-nvidia-drive-platforms?s_tid=srchtitle).
2.	Once the cones have been detected successfully, develop an algorithm to obtain the accurate positions of the cones to generate a local map of the scene. You can build a custom algorithm to detect the position of the cones. Alternatively, you can generate the point cloud using the [Simulation 3D Camera](https://www.mathworks.com/help/driving/ref/simulation3dcamera.html)  and detect cones in lidar using label data from the camera with known lidar-to-camera calibration parameters. For reference, follow this example: [Detect Vehicles in Lidar Using Image Labels](https://www.mathworks.com/help/lidar/ug/detect-vehicles-in-lidar-using-image-labels.html). 


## Background Material

1.	[Generate Skidpad Test](https://www.mathworks.com/help/vdynblks/ug/generate-skidpad-test-course.html)
2.	[How to Perform Data Labeling for Camera and Lidar Sensor Data](https://www.mathworks.com/videos/ground-truth-labeler-app-1529300803691.html)
3.	[Deep Learning in Simulink]( https://www.mathworks.com/videos/deep-learning-in-simulink-1599214701480.html)
4.	[Visual Detection of Traffic Cones for Autonomous Student Formula](https://dspace.cvut.cz/bitstream/handle/10467/101636/F3-BP-2022-Sip-Roman-main.pdf)
5.	[YOLOv2 Object Detection: Data Labelling to Neural Networks in MATLAB](https://blogs.mathworks.com/student-lounge/2020/07/07/yolov2-object-detection-data-labelling-to-neural-networks-in-matlab/)
6.	[Getting Started with Object Detection Using Deep Learning](https://www.mathworks.com/help/vision/ug/getting-started-with-object-detection-using-deep-learning.html)


## Impact

Enable accurate detection for autonomous racing cars.

## Expertise Gained 

Autonomous Vehicles, Computer Vision, Deep Learning, Modeling and Simulation

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/86) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

248
