**Project 209:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/rover.jpg"  width=500 /></td>
<td><p><h1>Autonomous Navigation for Vehicles in Rough Terrain </h1></p>
<p> Design and implement a motion planning algorithm for off-road vehicles on rough terrain.</p>
</table>

## Motivation

Automating a vehicle for off-road conditions poses different sets of challenges when compared to those tackled for on-road autonomous cars. The lack of road rules and lane structure presents the vehicle with unknown challenges it needs to deal with reactively.  Various industries (Agriculture, Construction, Mining, Planetary exploration) are looking to automate tasks where humans are involved, especially in mundane tasks (alt: repetitive actions) and in some cases hazardous operational situations.
A lot of these applications require a human driver to move the vehicle to accomplish the tasks. Automation of this motion can help free up humans for more sophisticated jobs and move them away from harm's way. It can also help with faster scaling and quick deployments to newer areas.

## Project Description

Demo a robot/vehicle (AMR, front loader, excavator, curiosity mars rover) working in a cluttered field (off-road) moving from point A to point B. The field should have minor bumps and ditches (less than 0.25m from ground plane for 1m radius).
 
Suggested steps:
1.	Start with [Execute Tasks for a Warehouse Robot example]( https://www.mathworks.com/help/robotics/ug/execute-tasks-for-a-warehouse-robot.html).
2.	Look at [A* Path Planning and Obstacle Avoidance in a Warehouse]( https://www.mathworks.com/help/robotics/ug/a-star-path-planning-and-obstacle-avoidance.html) to learn about replacing planner and connecting to Gazebo using co-simulation ([Perform Co-Simulation between Simulink and Gazebo]( https://www.mathworks.com/help/robotics/ug/perform-co-simulation-between-simulink-and-gazebo.html))
3.	Choose an application area (e.g. agriculture) and corresponding type of vehicle
4.	Replace warehouse in above examples with a scenario of chosen application. Realistic scenes close the gap between simulation and real-world, use/construct a world with an uneven field and scattered obstacles
5.	Pick/create an algorithm for motion planning which ensures stability of the vehicle.  i.e. takes care of roll, pitch, elevation constraints forced by the terrain 
6.	Implement the chosen/created algorithm as a MATLAB function and replace A* or PRM in the above examples
7.	Add sensor to the vehicle for sensing the environment, such as Lidar or Camera. Read sensor data from gazebo [Perform Co-Simulation between Simulink and Gazebo ](https://www.mathworks.com/help/robotics/ug/perform-co-simulation-between-simulink-and-gazebo.html)
8.	Create map using sensor data (Easy: [Insert lidar pointcloud to 3D map](https://www.mathworks.com/help/nav/ref/occupancymap3d.insertpointcloud.html). Advanced: see example section below)
9.	Integrate modules
10.	Demo the vehicle using the pure pursuit algorithm to follow the path/trajectory from point A to point B using Simulink and Gazebo

Project Variations:
1.	Different domain (mining, construction, etc.) and different vehicles (front loaders, digging machines, combines (agriculture harvesters) 
2.	Different path following controllers such as model predictive controller (MPC)

Advanced research work:
1.	Bring in uncertainty handling to the planning algorithms
2.	Deploying on to a platform and demonstrating advantage of simulation


## Background Material

Here are some links to background material that you can use as a starting point for your project.

Example: 
-	[Custom planning infrastructure](https://www.mathworks.com/help/nav/ref/nav.statevalidator-class.html#mw_e4f7cedb-14ed-440b-b5ed-5d9902e5f02f)
-	[Co-simulation with Gazebo](https://www.mathworks.com/help/robotics/ug/perform-co-simulation-between-simulink-and-gazebo.html)
	- [Simulate Mars Rover with Gazebo (Video)](https://www.youtube.com/watch?v=CqVXXirYJaM)
	- [Different Gazebo worlds](https://clearpathrobotics.com/blog/2020/07/clearpath-robots-get-new-gazebo-simulation-environments/)
-	[Popular planners](http://www.cs.cmu.edu/~maxim/classes/robotplanning_grad/lectures/RRT_16782_fall20.pdf)
	- [Comparison Table](https://www.mathworks.com/help/nav/ug/choose-path-planning-algorithms-for-navigation.html)
-	SLAM with Computer Vision Toolbox
	- [Structure From Motion](https://www.mathworks.com/help/vision/ug/structure-from-motion-from-multiple-views.html)
	- [Stereo SLAM](https://www.mathworks.com/help/vision/ug/stereo-visual-simultaneous-localization-mapping.html)
	- [Monocular Visual SLAM](https://www.mathworks.com/help/vision/ug/monocular-visual-simultaneous-localization-and-mapping.html).
-	SLAM with Lidar Toolbox
	- [Map from Lidar data](https://www.mathworks.com/help/vision/ug/build-a-map-from-lidar-data-using-slam.html) 
	- [Map  using segmented Lidar data](https://www.mathworks.com/help/lidar/ug/build-a-map-and-localize-using-segment-matching.html)

Suggested readings:
-	[1] Pivtoraiko, M. and A. Kelly. “Efficient Constrained Path Planning via Search in State Lattices.” (2005).
-	[2] Howard, T. M. and A. Kelly. “Optimal Rough Terrain Trajectory Generation for Wheeled Mobile Robots.” The International Journal of Robotics Research 26 (2007): 141 - 166.  

## Impact

Expand the frontiers of off-road exploration and navigation using mobile robots for precision agriculture, firefighting, search and rescue, and planetary exploration. 

## Expertise Gained 

Autonomous Vehicles, Computer Vision, Robotics, Image Processing, Mobile Robots, SLAM, UGV, Optimization


## Project Difficulty

Bachelor, Master's, Doctoral
## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/40) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[lgavshin](https://github.com/lgavshin)

## Project Number

209
