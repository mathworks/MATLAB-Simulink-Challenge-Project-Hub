**Project 224:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/snakeRobot.jpg"  width=500 /></td>
<td><p><h1>Snake-like Robot Modeling and Navigation</h1></p>
<p>Model and control an autonomous snake-like robot to navigate an unknown environment.  </p>
</table>

## Motivation

Snake-like robots offer impressive dexterity owing to their high degree-of-freedom (DOF) serial linkage. These bio-inspired designs are becoming increasingly popular for inspection tasks, for which the manipulator’s slender body can access an internal space via a tight aperture and navigate through a narrow environment. Applications include the inspection of vessels and engines in the nuclear and aeronautical industries, as well as endoscopic imaging for medical diagnosis. In both cases, the accurate control of the entire manipulator body is of critical importance to the safe operation of the device.  

## Project Description

Construct a [Simscape™ Multibody™](https://www.mathworks.com/help/physmod/sm/ref/simscape.multibody.kinematicssolver.html?searchHighlight=multibody%20inverse%20kinematics&amp;s_tid=srchtitle) assembly of a snake-like robot and develop an autonomous controller to navigate the robot in a constricted environment by entering it from a small opening.  

Suggested steps: 
1. Model the robot as with a serial chain of solid bodies and revolute joints.  
2. Solve the inverse kinematics of the end-effector and robot body, cf. [Solve kinematic problems for a Multibody model](https://www.mathworks.com/help/physmod/sm/ref/simscape.multibody.kinematicssolver.html?searchHighlight=multibody%20inverse%20kinematics&amp;s_tid=srchtitle). 
3. Adopt an appropriate actuation mechanism for the revolute joints. These robots are commonly designed to use pneumatic actuators, magnetic elements or a combination of cables and springs, cf. Multibody [Assemblies](https://www.mathworks.com/help/physmod/sm/multibody-systems.html).
4. Implement a control algorithm to follow a trajectory using the inverse kinematics models developed in step 2. Learn about trajectory generation algorithms [here](https://www.mathworks.com/help/robotics/coordinate-system-transformations.html).  

Project variations:
 
Model your snake-like robot, using CAD software of your choice 
-	Export it as a URDF 
-	Import the URDF into Simscape Multibody using the [smimport](https://www.mathworks.com/help/physmod/sm/ref/smimport.html) function 
-	Alternatively, import the URDF into Gazebo and control it using Simulink with Gazebo co-simulation or [ROS Toolbox®](https://www.mathworks.com/products/ros.html) 
 
Advanced project work:
-	Pick and build the scenario in which the robot will navigate, e.g. pipeline, aircraft engine, reaction vessel.  
-	Create a model of the environment using occupancy grids ([2D](https://www.mathworks.com/help/robotics/ug/occupancy-grids.html),[3D](https://www.mathworks.com/help/nav/ref/occupancymap3d.html)).  
-	Add sensors to model distance and inertial sensors, e.g. LiDAR, cameras, and IMUs.   
-	Integrate approaches for [planning](https://www.mathworks.com/discovery/path-planning.html) and obstacle avoidance.  
-	Develop searching and mapping algorithms. 
-	Incorporate optimization-based or reinforcement learning-based control techniques in the motion planning hierarchy using …toolboxes  
-	Test a perception-based workflow by modelling the inspected [VR in Simulink 3d Animation](https://www.mathworks.com/products/3d-animation.html)or using [UE4 co-simulation](https://www.mathworks.com/help/driving/unreal-engine-scenario-simulation.html).  
-	Model aerodynamic forces (drag and lift) experienced by the robot body during motion.   
-	Develop an advanced robot using multiple snake-like components. For example, you could consider each component as finger in a robotic hand or gripper, or as legs in a robotic walker or swimmer.  

## Background Material

Examples: 
- [Create a simple part in Simscape Multibody](https://www.mathworks.com/help/physmod/sm/ug/creating-a-simple-part.html) 
- [Solve kinematic problems for a Multibody model](https://www.mathworks.com/help/physmod/sm/ref/simscape.multibody.kinematicssolver.html?searchHighlight=multibody%20inverse%20kinematics&s_tid=srchtitle) 
- [Modelling flexible bodies in Simscape Multibody](https://www.mathworks.com/campaigns/offers/model-flexible-bodies.html) 

 Suggested readings: 
- Hughes, J., Culha, U., Giardina, F., Guenther, F., Rosendo, A., & Iida, F. (2016). Soft manipulators and grippers: A review. Frontiers in Robotics and AI, 3, 69. 
- SMH Sadati, SE Naghibi, A Shiva, B Michael, L Renson. (2019) TMTDyn: A matlab package for modeling and control of hybrid rigid–continuum robots based on discretized lumped systems and reduced-order models The International Journal of Robotics Research, 2019 
- S Kim, C Laschi, B Trimmer  Soft robotics: a bioinspired evolution in robotics - Trends in biotechnology, 2013 

## Impact

Advance robotics design for hazardous environments inspection and operation in constricted spaces. 

## Expertise Gained 

Robotics, Manipulators, Modeling and Simulation

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/56) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

224
