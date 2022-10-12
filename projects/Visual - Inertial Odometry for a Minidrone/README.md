**Project 234:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/visualIntertialOdometry.png"  width=500 /></td>
<td><p><h1>Visual-Inertial Odometry for a Minidrone </h1></p>
<p>Design and implement a visual/visual-inertial odometry system using onboard camera for a Minidrone.</p>
</table>

## Motivation

Using an aerial vehicle to investigate an indoor environment is an emerging field – whether it is for inspection of machinery or for monitoring environmental conditions in a large greenhouse [1]. Indoor aerial vehicles can play a crucial role when the situation does not allow accessibility to humans. 

However, navigating an aerial vehicle in an indoor space is a challenging task – especially since the GPS sensor cannot help with the information about its position. This is where the odometry technique can come in handy - it helps to estimate the change of position by processing the change in sensor values. The technique uses the sensor data like Inertial Measurement Unit (IMU), camera, etc. to estimate the change in position as the vehicle moves in the space.


## Project Description

Use MATLAB and Simulink to design a visual-inertial odometry system for a micro aerial vehicle. Use the downward-facing camera on the Parrot Mambo Minidrone along with the 6-axis IMU data to develop the algorithm to improve the state estimation and replace the currently adopted optical flow simulation algorithm.

Suggested steps:
 - Become familiar with MATLAB and Simulink using resources listed in the Background Material section below.
 - Install the [Simulink Support Package for Parrot Minidrones](https://www.mathworks.com/matlabcentral/fileexchange/63318-simulink-support-package-for-parrot-minidrones) from MATLAB-&gt;Add-Ons.
 - Use the [Parrot Minidrone Competition](https://www.mathworks.com/help/supportpkg/parrot/ref/color-detection-and-landing-parrot-example.html) model as the baseline controller.
 - Add various types of [image noise](https://www.mathworks.com/help/images/ref/imnoise.html) to the camera model to simulate real-world image noise. 
 - Understand the present approximate camera sensor model used to calculate optical flow. 
 - Create the sensor model to process the information from the simulated monocular downward facing camera image using the quad body’s angular and linear velocity to calculate optical flow. You can use the [already existing blocks](https://www.mathworks.com/help/vision/referencelist.html?type=block&amp;s_tid=CRUX_topnav) from the Computer Vision Toolbox. Use the information for position velocity estimation of the aerial vehicle [2], [3] 
- Update the controller and state estimator in the baseline model to account for any possible changes due to the new perception block and sensor simulation model, if needed.

Next Step – Hardware Deployment:
 - If you have the hardware available with you, deploy the controller on the Parrot Mambo hardware. Log the ‘opticalFlow_data’ on the hardware using ['To Workspace' block](https://www.mathworks.com/help/simulink/slref/toworkspace.html). [Obtain the MAT file](https://www.mathworks.com/help/supportpkg/parrot/ug/using-flight-control-interface-to-obtain-the-log-files.html) for the logged optical flow data using the Flight Control Interface. Compare it with the results obtained from simulations. Check the Background Material section for details.

Project Variations:
 - Design a deep learning model to estimate a vehicle’s displacement to correct the IMU only estimation [4]


## Background Material

 - Getting started self-paced courses - [MATLAB Onramp](https://www.mathworks.com/learn/tutorials/matlab-onramp.html), [Simulink Onramp](https://www.mathworks.com/learn/tutorials/simulink-onramp.html), [Control Design Onramp](https://www.mathworks.com/learn/tutorials/control-design-onramp-with-simulink.html), [Image Processing Onramp](https://www.mathworks.com/learn/tutorials/image-processing-onramp.html)
 - Deploy to hardware using [Simulink Support Package for Parrot Minidrones](https://www.mathworks.com/help/supportpkg/parrot/)
 - Video on [obstacle avoidance with a camera sensor](https://www.youtube.com/watch?v=YTmq13xGnLg) that uses optical flow information from the simulated camera image for a different task
 - Video series on [Drone Simulation and Control](https://www.mathworks.com/videos/series/drone-simulation-and-control.html) that explains the workflow for developing a control system for the Parrot Mambo Minidrone and explains how to deploy the algorithms on the hardware
 - Check out [Optical Flow with Parrot Minidrones](https://www.mathworks.com/help/supportpkg/parrot/ug/optical-flow-with-parrot-minidrones.html) on the documentation page 


Suggested readings:

[1] Roldán, J.J., Joossen, G., Sanz, D., Del Cerro, J., Barrientos, A. Mini-UAV Based Sensory System for Measuring Environmental Variables in Greenhouses. Sensors 2015, 15, 3334-3350. https://doi.org/10.3390/s150203334 

[2] Ho HW, de Croon GC, Chu Q. Distance and velocity estimation using optical flow from a monocular camera. International Journal of Micro Air Vehicles. September 2017:198-208. doi:10.1177/1756829317695566  

[3] B. Herisse, F. Russotto, T. Hamel and R. Mahony, "Hovering flight and vertical landing control of a VTOL Unmanned Aerial Vehicle using optical flow," 2008 IEEE/RSJ International Conference on Intelligent Robots and Systems, 2008, pp. 801-806, doi: 10.1109/IROS.2008.4650731.
  
[3] Wenxin Liu, David Caruso, Eddy Ilg, Jing Dong, Anastasios I. Mourikis, Kostas Daniilidis,
Vijay Kumar, and Jakob Engel, “TLIO: Tight Learned Inertial Odometry,” IEEE ROBOTICS AND AUTOMATION LETTERS, VOL. 5, NO. 4, OCTOBER 2020


## Impact

 Advance aerial vehicle control in contracted spaces with unforeseen environment conditions.

## Expertise Gained 

Autonomous Vehicles, Computer Vision, Drones, Robotics, Aerospace, Control, Image Processing, Low-cost Hardware, Modeling and Simulation, Signal Processing, State Estimation, UAV


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/68) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

234
