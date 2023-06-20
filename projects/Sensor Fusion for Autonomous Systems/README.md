**Project 233:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/sensorFusion.jpg"  width=500 /></td>
<td><p><h1>Sensor Fusion for Autonomous Systems</h1></p>
<p>Develop a sensor fusion algorithm for vehicle pose estimation using classical filtering or AI-based techniques.</p>
</table>

## Motivation

A key piece of any autonomous system is answering the question “Where am I?”  This can be achieved with high accuracy today because of the abundance of sensors available. But each autonomous vehicle works in a specific environment and requires specially chosen sensors.

Each sensor measures its environment with varying precision and has unique benefits and drawbacks. Classical techniques like the Extended Kalman Filter are often used to combine varying sensors to achieve a higher precision estimate of a vehicle’s position and orientation (pose) than any one sensor could achieve alone. Recently, machine learning and deep learning approaches have tried to improve localization performance and, in some cases, have been able to achieve outcomes which are not possible with classical filtering.  


## Project Description

This project focuses on fusing sensors on a ground robot or quadcopter to determine position and orientation. The [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html), [Automated Driving Toolbox]( https://www.mathworks.com/products/automated-driving.html), [LIDAR toolbox]( https://www.mathworks.com/products/lidar.html), [Navigation Toolbox™](https://www.mathworks.com/products/navigation.html), [UAV Toolbox](https://www.mathworks.com/products/uav.html), and [Sensor Fusion and Tracking Toolbox™](https://www.mathworks.com/products/sensor-fusion-and-tracking.html)  enable you to simulate a vehicle trajectory and many commonly used sensors. Popular sensors for autonomous systems include IMUs, GPS, LIDAR, visual odometry, wheel encoder odometry, altimeters, and pitot tubes among many others.  In this project you will design a fusion algorithm for a group of these sensors to localize your ground robot or quadcopter

Suggested steps:
1.	Use one of the many publicly available inertial navigation datasets, including but not limited to [1], [2], [3], [4]. Each of these datasets uses some subset of the aforementioned sensors. 
2.	Use an [insEKF](https://www.mathworks.com/help/nav/ref/insekf.html) in Navigation Toolbox to create an extended Kalman filter to fuse the simulated sensor data and compare it to the recorded ground truth in the dataset. You may need to develop sensor plugins for the [insEKF]( https://www.mathworks.com/help/nav/ref/insekf.html), like the [insGyroscope](https://www.mathworks.com/help/nav/ref/insgyroscope.html?searchHighlight=insGyroscope&amp;s_tid=srchtitle_insGyroscope_1) or [insAccelerometer](https://www.mathworks.com/help/nav/ref/insaccelerometer.html?searchHighlight=insAccelerometer&amp;s_tid=srchtitle_insAccelerometer_1). See [5] for a description of how to build a custom sensor.
3.	Make your filter robust to sensor dropout by detecting bad sensor data and/or adding sensors. You can manually modify/corrupt/remove some of the recorded sensor data to see how your filter handles the situation.

Project variations:
-	Build trajectory simulation using one of the toolboxes listed above. Consider using the [uavScenario](https://www.mathworks.com/help/uav/ug/uav-scenario-tutorial.html), [robotScenario](https://www.mathworks.com/help/robotics/ref/robotscenario.html), [drivingScenario](https://www.mathworks.com/help/driving/ref/drivingscenario.html) or [waypointTrajectory](https://www.mathworks.com/help/fusion/ref/waypointtrajectory-system-object.html) depending on which autonomous system you are modeling.  Save the ground truth pose of the vehicle created by this trajectory. Use the sensor simulators in these toolboxes ([imuSensor](https://www.mathworks.com/help/nav/ref/imusensor-system-object.html?searchHighlight=imusensor&amp;s_tid=srchtitle_imusensor_2), [gpsSensor](https://www.mathworks.com/help/nav/ref/gpssensor-system-object.html?searchHighlight=gpsSensor&amp;s_tid=srchtitle_gpsSensor_1), etc) to simulate input to an insEKF. Tune the insEKF and compare its performance to ground truth.
-	Use a machine learning or deep learning based approach to fusing data rather than an extended Kalman filter, such as in [6] and [7]. 


## Background Material

Datasets:

[1] [The EuRoC MAV Dataset](https://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets) M. Burri, J. Nikolic, P. Gohl, T. Schneider, J. Rehder, S. Omari, M. Achtelik and R. Siegwart, The EuRoC micro aerial vehicle datasets, International Journal of Robotic Research, DOI: 10.1177/0278364915620033, early 2016.

[2] [The TUM VI Dataset](https://vision.in.tum.de/data/datasets/visual-inertial-dataset) Klenk, Simon, et al. "TUM-VIE: The TUM Stereo Visual-Inertial Event Dataset." 2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). IEEE, 2021.

[3] [The KTTI Dataset](http://www.cvlibs.net/datasets/kitti/) Geiger, Andreas, et al. "Vision meets robotics: The kitti dataset." The International Journal of Robotics Research 32.11 (2013): 1231-1237.

[4] [ANSFL Dataset](https://github.com/ansfl/Navigation-Data-Project/) A. Shurin et al., "The Autonomous Platforms Inertial Dataset," in IEEE Access, vol. 10, pp. 10191-10201, 2022, doi: 10.1109/ACCESS.2022.3144076.

Examples and papers:

[5] [Design Fusion Filter for Custom Sensors](https://www.mathworks.com/help/nav/ug/design-fusion-filter-for-custom-sensors.html)

[6] Brossard, Martin, Silvere Bonnabel, and Axel Barrau. "Denoising imu gyroscopes with deep learning for open-loop attitude estimation." IEEE Robotics and Automation Letters 5.3 (2020): 4796-4803.
Suggested readings:

[7] Esfahani, Mahdi Abolfazli, et al. "OriNet: Robust 3-D orientation estimation with a single particular IMU." IEEE Robotics and Automation Letters 5.2 (2019): 399-406.


## Impact

Enhance navigation accuracy of autonomous vehicles. 

## Expertise Gained 

Autonomous Vehicles, Sensor Fusion and Tracking, State Estimation


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/67) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

233
