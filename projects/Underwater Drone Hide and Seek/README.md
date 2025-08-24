Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Underwater%20Drone%20Hide%20and%20Seek&tfa_2=27)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Underwater%20Drone%20Hide%20and%20Seek&tfa_2=27)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/AUV.png"  width=400 /></td>
<td><p><h1>Underwater Drone Hide and Seek</h1></p>
<p>Explore robot collaboration and competition underwater.</p>
</table>

## Motivation

Artificial intelligence and sensor technologies have pushed the boundary of how human explore uncharted spaces both above our heads and below our feet.
Underwater drones have been mapping the global seafloor and constructing undersea internet cables for years. 
Now they are getting more collaborative; we are seeing increasing amount of robot fleets perform a single task in a coordinated way.
What is the next frontier following collaborative robots? Could it be competitive robots? 

## Project Description

This project requires a scenario where robots are competing against each other. Design algorithms for underwater drones to compete in a hostile situation, where a first drone is trying to stay stealth and a second drone is actively searching for the first drone. Develop an algorithm to navigate a stealth underwater drone through a radar region (treat radar sweeps as if dynamic obstacles) without being detected. Develop another algorithm to navigate a second underwater drone, which is equipped with a fixed scanning frequency radar, to search for the stealth drone. 

Suggested steps:
1.	Draw a virtual underwater environment in your chosen simulation software ([UAV scenario designer](https://www.mathworks.com/help/uav/ug/uav-scenario-tutorial.html) in MATLAB®, [Gazebo](http://gazebosim.org/), or [Unreal Engine](https://www.unrealengine.com/))
2.	Adjust the [Simulink® model](https://www.mathworks.com/help/aeroblks/modeling-and-simulation-of-an-autonomous-underwater-vehicle.html) of underwater drone provided by MathWorks to meet your maneuverability requirement, and make a duplicate so you have two agents.
3.	Add a sonar sensor to the Simulink model using Sensor Fusion and Tracking Toolbox™ 
4.	Implement your own control strategy for each vehicle in Simulink (some ideas: either build a state machine using defined “if-then” or [Stateflow](https://www.mathworks.com/products/stateflow.html), or use reinforcement learning via the [Reinforcement Learning toolbox™ ](https://www.mathworks.com/products/reinforcement-learning.html) to train your hide-and-seek algorithm on the entire Simulink model)
5.	Show your hide-and-seek simulation in your virtual environment.

## Background Material

- [Modeling and Simulation of an Autonomous Underwater Vehicle (Simulink Model)](https://www.mathworks.com/help/aeroblks/modeling-and-simulation-of-an-autonomous-underwater-vehicle.html). Look at this [Repo](https://github.com/mathworks-robotics/modeling-and-simulation-of-an-AUV-in-Simulink/tree/master) for connecting with 3D enviroment.
- [Modeling and Simulation of an Autonomous Underwater Vehicle (Video)](https://www.mathworks.com/videos/modeling-and-simulation-of-an-autonomous-underwater-vehicle-1586937688878.html)
- [Control of an Autonomous Underwater Vehicle](https://www.mathworks.com/videos/matlab-and-simulink-robotics-arena-lqr-control-of-an-autonomous-underwater-vehicle-1543831839770.html)
- [Design, Modeling, and Simulation of Autonomous Underwater Vehicles](https://www.mathworks.com/videos/design-modeling-and-simulation-of-autonomous-underwater-vehicles-1619636864529.html)
- [Radar System Design](https://www.mathworks.com/discovery/radar-system-design.html)
- [Multi-Agent Hide and Seek video](https://www.youtube.com/watch?v=kopoLzvh5jY)

## Impact

Ocean engineering, underwater constructions, underwater exploration.


## Expertise Gained

Artificial Intelligence, Robotics, AUV, Embedded AI, Machine Learning, Reinforcement Learning, Sensor Fusion and Tracking, SLAM


## Project Difficulty

Bachelor, Master’s level

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/5) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[dryouwu](https://github.com/dryouwu)

## Project Number

27

