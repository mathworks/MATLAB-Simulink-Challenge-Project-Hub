**Project 47:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the rewards

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/uav.png"  width=400 /></td>
<td><p><h1>Rotor-Flying Manipulator Simulation</h1></p>
<p>Rotor-flying manipulation will change the future of aerial transportation and manipulation in construction and hazardous environments. Take robotics manipulation to the next level with an autonomous UAV</p>
</table>

## Motivation

Rotor-flying manipulators are Unmanned Aerial Vehicles (UAVs) equipped
with a lightweight manipulator and have the potential to transform major
industries thanks to their unconstrained 3D motion making them ideal for deployent
in cluttered environments. Rotor-flying manipulation is a natural evolution
of mobile manipulation and a popular research area in robotics that
attracts the interest of many companies and public institutions. Its
applications range from aerial transportation in construction,
manipulations in hazard places, inspections and installations on sites
with a difficult access, to search and rescue.

Autonomous aerial manipulation is challenging problem because of the
coupled dynamics between the two systems.

## Project Description

Develop an autonomous aerial manipulation simulation including a UAV equipped with a multi-DoF manipulator to pick an object and place it into a goal location. Pose estimation and perception of the environment will be developed using a visual system. Global motion planning with obstacle avoidance will allow the system to reach the target location to approach and pick an object and eventually place it into a goal location.  
Model the UAV and the manipulator and couple them together. The coupled system will be the plant for the controller you will need to design and implement in order to stabilize and fly the system.
For this project we can neglect aerodynamic effects, assuming low-speed flight, and external disturbances. 

Suggested steps:

1.	Create a Simulink or MATLAB model of the coupled system of UAV + manipulator. Simscape multibody is a physical modeling tool that you can use for modeling the system and import the model in the environment of your choice (Simulink or MATLAB)
2.	Design and implement a controller to control the orientation and position of the coupled system 
3.	Build your environment as an open space to start with (without obstacles), and then if you have enough time, add obstacles and use an obstacle avoidance algorithm to fly around them.
4.	Use the position of the objects and the target locations as waypoints to the flying manipulator (using a waypoint follower algorithm from the UAV Toolbox) to get close to the objects to pick.
5.	Once the UAV is above the object, plan the manipulator motion using a path planner algorithm.

Advanced project work:

1. Implement a visual-based pose estimation algorithm
    -   Use Lidar scans to estimate the system’s pose (ego-motion) 
    -	Use Computer Vision and Deep Learning (for example the YOLOv2 neural network) to detect and locate the object to pick and place.


## Background Material

- [UAV Toolbox](https://www.mathworks.com/products/uav.html)
- [Robotics System Toolbox](https://www.mathworks.com/products/robotics.html)
- [Navigation Toolbox](https://www.mathworks.com/help/nav/getting-started-with-navigation-toolbox.html)
- [Simscape Multibody](https://www.mathworks.com/products/simmechanics.html)
- [Quadcopter programming in Simulink](https://www.mathworks.com/videos/programming-drones-with-simulink-1513024653640.html)
- [Quadcopter modelling and Control with Simscape and Simulink](https://www.mathworks.com/matlabcentral/fileexchange/44902-quadrotor-modelling-and-control-with-simmechanics?s_tid=srchtitle) 
- [Pick-and-place example](https://www.mathworks.com/help/robotics/examples/pick-and-place-workflow-using-stateflow.html)

## Impact

Transform the field of robot manipulation.

## Expertise Gained

Drones, Robotics, Manipulators, Modeling and Simulation, UAV

## Project Difficulty

Master’s level

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/12) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

47

