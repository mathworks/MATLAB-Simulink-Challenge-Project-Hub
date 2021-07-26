**Project 220:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ros.png"  width=500 /></td>
<td><p><h1>Testing Realtime Robustness of ROS in Autonomous Driving</h1></p>
<p>Develop a realtime collision avoidance system using ROS2 that will execute a safe vehicle response.</p>
</table>

## Motivation

As automated driving systems become more complex, there is a greater need to leverage middleware such as the [Robotic Operating System (ROS)](https://www.ros.org/).  However, the use of such middleware requires trade-offs with respect to aspects such as architecture, execution speed, and control over execution.  When designing complicated automated driving systems for production, it is important to be aware of such trade-offs and related issues to produce a vehicle that meets performance and safety standards.

## Project Description

Using the principles of Model-Based Design, leveraging the toolchain from the MathWorks including [Simulink®](https://www.mathworks.com/products/simulink.html), [System Composer™](https://www.mathworks.com/products/system-composer.html), and [ROS Toolbox](https://www.mathworks.com/products/ros.html), develop a realtime collision avoidance robot using ROS2 that will execute a safe vehicle response for a vehicle travelling at, for example 50 mph, to prevent a frontal collision. There are three major parts of this project:
1. System design and analysis
2. System prototyping using low-cost hardware
3. System testing and analysis of performance

Suggested high-level steps:
1.	Develop system- and component-level requirements.  The system only needs to consist of two applications where ROS sits between them.
2.	Develop architecture using System Composer™.
3.	Develop component algorithms such as image acquisition/computer vision, navigation, and control of vehicle, using Simulink as the common algorithm platform.
4.	Integrate components using ROS Toolbox.
5.	Use simulation to predict the performance of the system and perform tradeoff studies of the design or architecture.  Performance metrics may include lag, responses to data drop-outs, and irregular data transfer rates. [Automated Driving Toolbox™](https://www.mathworks.com/products/automated-driving.html) coupled with [Unreal Engine](https://www.unrealengine.com/en-US/) can also be used to perform simulations in a virtual environment. 
6.	Deploy algorithms to hardware using either [hardware support packages](https://www.mathworks.com/hardware-support/home.html) or embedded controller. Example hardware platforms could be: Jetbot, Raspberry Pi
7.	Test system, closely monitoring performance metrics such as data throughput, response time, and tracking accuracy.  Also note any issues with integrating the system within the ROS architecture. Compare results with ideal performance of a system with no middleware latencies.

Project variations: 
-	Study effects of architecture, such as where sensor fusion is performed (in vehicle management computer or nearer to sensors)
-	Implement cloud processing for vision algorithms (mainly to offload processing from low-cost hardware)
-	Use more advanced sensors such as LIDAR or a combination of sensors + sensor fusion

Advanced project work (optional): 
-	Add multiple computation nodes (ex. One for image processing, another for vehicle controls)
-	Deploy on a full-scale vehicle
-	Perform optimization to determine best interface specifications (speed, message size, etc.)

## Background Material

-	[ROS Toolbox](https://www.mathworks.com/products/ros.html)
-	[Get Started with ROS Toolbox](https://www.mathworks.com/help/ros/getting-started-with-ros-toolbox.html)
-	[System Composer](https://www.mathworks.com/products/system-composer.html)
-	[Simulink](https://www.mathworks.com/products/simulink.html)
-	[Automated Driving Toolbox](https://www.mathworks.com/products/automated-driving.html)
-	[Automated Parking Valet](https://www.mathworks.com/help/driving/ug/automated-parking-valet.html)
-	[Deep Learning with Raspberry Pi and MATLAB](https://www.mathworks.com/company/events/webinars/upcoming/deep-learning-with-raspberry-pi-and-matlab-3251374.html)
-	[Deploying ROS Node on Raspberry Pi](https://youtu.be/6IWImhKpihA)
-	[Deep Learning with NVIDIA Jetson and ROS](https://youtu.be/0FPPBGAKw8k)
- 	[Simulink Onramp](https://www.mathworks.com/learn/tutorials/simulink-onramp.html)
-	[MATLAB Onramp](https://www.mathworks.com/learn/tutorials/matlab-onramp.html)

Suggested readings:
-	[ROS Robotics By Example, 2e](https://www.mathworks.com/academia/books/ros-robotics-by-example-fairchild.html?s_tid=srchtitle)
-	[Intelligent Control of Robotic Systems](https://www.mathworks.com/academia/books/intelligent-control-of-robotic-systems-behera.html?s_tid=srchtitle)



## Impact

Contribute to improving access and safety of transportation through robust automated driving systems.


## Expertise Gained 

Autonomous Vehicles, Robotics, Automotive, Image Processing, Modeling and Simulation, Sensor Fusion and Tracking, Low-Cost Hardware


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/52) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

220
