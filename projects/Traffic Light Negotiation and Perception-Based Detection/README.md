**Project 223:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/intersection.jpg"  width=500 /></td>
<td><p><h1>Traffic Light Negotiation and Perception-Based Detection  </h1></p>
<p>Detect traffic lights and perform traffic light negotiation at an intersection in Unreal environment. </p>
</table>

## Motivation

Navigating an intersection with traffic lights is a challenging but safety critical task for a self-driving car. Using perception to identify traffic light positions and states despite lighting conditions and occlusions is an interesting problem that a 3D simulation environment can safely and effectively provide a solution for. Automated Driving Toolbox™ provides a 3D simulation environment powered by Unreal Engine® from Epic Games® that can be used to visualize traffic lights and the motion of a vehicle in a 3D scene. 

## Project Description

Use MATLAB® and Simulink® to load a pre-built Unreal scene, detect and identify the state of the traffic light nearest to the ego-vehicle, design a Stateflow® model to control traffic lights in the scene, and control the reaction of the ego-vehicle in accordance to the traffic lights and surrounding vehicles.

The position and color state of the traffic light at an intersection can be obtained by using a combination of sensors and perception algorithms. Perception can be used to identify surrounding vehicles which can also be used to inform decisions. Identify distance between the traffic light nearest to the ego-vehicle and the ego-vehicle  in a pre-built Unreal scene intersection. Identify the color of the traffic light using camera output and perception. Control the change of state of the traffic light using Stateflow. The ego-vehicle should react to the traffic light information. Build your own scenes with the following suggested requirements and perform a quantitative analysis of your algorithm:
a.	Traffic lights obstructed by trees
b.	Various types of traffic lights like hanging, on a pole, multiple traffic lights in different orientations at an intersection
c.	Scenes with different weather conditions
Work with [Automated Driving Toolbox™](https://www.mathworks.com/help/driving/index.html), [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html), [Lidar Toolbox™]( https://www.mathworks.com/help/lidar/getstarted.html), and [Sensor Fusion and Tracking Toolbox™](https://www.mathworks.com/products/sensor-fusion-and-tracking.html) for this project. 

Suggested steps: 
1.	Become familiar with MATLAB and Simulink based sensor fusion using the [examples in Sensor Fusion and Tracking Toolbox™](https://www.mathworks.com/help/fusion/examples.html), send scenario information from Simulink to Unreal simulation environment using the traffic light negotiation with Unreal visualization example, scenario design using Automated Driving Toolbox, and vehicle dynamics modelling examples listed in Background Material section below.
2.	Load and visualize pre-built [US city block](https://www.mathworks.com/help/driving/ref/uscityblock.html) scene in Unreal and Simulink. This scene already contains traffic lights and intersections, along with ego and other vehicles.
3.	Develop an algorithm in Stateflow to three traffic light states (red, yellow, green) for all traffic lights in the scenario and change their colors accordingly. 
4.	Add sensors to the ego vehicle. 
5.	Use the camera output and perception to detect the traffic light color state.
6.	Fuse the sensor outputs to obtain the distance between the ego vehicle and the nearest traffic light at that timestep, and poses of other vehicles nearest to/in front of the ego vehicle. 
7.	Program the ego-vehicle to react to the nearest traffic light pose and state ie stop at a certain distance from the light on red, go on green. The ego should also react to other vehicles in the scenario ie the ego should stop behind a lead vehicle on red.
8.	Perform a quantitative analysis of algorithm performance on various scenarios (some requirements are suggested in the project description) and collate the results. Refer to the background material on how to customize Unreal scenes.

Project variations:
1.	Design a controller for the ego-vehicle that takes velocity and path information from the planner. 
2.	Add decision logic for a planner that changes ego vehicle state based on the color of the traffic light and positions of other vehicles in the scenario. Use the planner and controller in the ‘Customize Unreal Engine Scenes for Automated Driving’ example model as a starting point.
3.	Try adding multiple types of cameras (like a fisheye) and other sensors (like a LIDAR and radar) specifically for traffic light detection.

Advanced project work:
1.	Try creating your own camera sensor to model a specific camera. 
2.	Try vehicle dynamics models of various fidelity to help achieve 

## Background Material

-	[Customize Unreal Engine Scenes for Automated Driving](https://www.mathworks.com/help/driving/ug/customize-3d-scenes-for-automated-driving.html)
-	[Traffic Light Negotiation with Unreal Engine Visualization](https://www.mathworks.com/help/mpc/ug/traffic-light-negotiation-with-unreal-engine-visualization.html)   
-	[US city block 3D environment](https://www.mathworks.com/help/driving/ref/uscityblock.html)
-	[Adaptive Cruise Control with Sensor Fusion](https://www.mathworks.com/help/driving/ug/adaptive-cruise-control-with-sensor-fusion.html)
-	[Automated Driving Using Model Predictive Control](https://www.mathworks.com/help/mpc/ug/automated-driving-using-model-predictive-control.html)
-	[Obstacle Avoidance Using Adaptive Model Predictive Control](https://www.mathworks.com/help/mpc/ug/obstacle-avoidance-using-adaptive-model-predictive-control.html)
-	[Visualize Sensor Data from Unreal Engine Simulation Environment](https://www.mathworks.com/help/driving/ug/visualize-3d-simulation-sensor-coverages-and-detections.html)


## Impact

Contribute to the advancement of autonomous vehicles traffic coordination in intersections through simulation. 

## Expertise Gained 

Autonomous Vehicles, Computer Vision, Automotive, Control, Deep Learning, Image Processing, Modeling and Simulation, Sensor Fusion and Tracking


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/55) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

223
