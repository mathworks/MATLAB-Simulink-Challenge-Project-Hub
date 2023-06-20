Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Multi-UAV%20Path%20Planning%20for%20Urban%20Air%20Mobility&tfa_2=247)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Multi-UAV%20Path%20Planning%20for%20Urban%20Air%20Mobility&tfa_2=247)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/uamPathPlanning.png"  width=500 /></td>
<td><p><h1>Multi-UAV Path Planning for Urban Air Mobility</h1></p>
<p>Develop a path planning algorithm for multiple drones flying in an urban environment.</p>
</table>

## Motivation

Path planning for Urban Air Mobility (UAM), including air taxis and drone deliveries, is a critical challenge in the transportation industry. With the growth of UAM, the demand for efficient and optimized path-planning algorithms is set to rise. As per the [Grand View Research Report](https://www.grandviewresearch.com/industry-analysis/global-commercial-drones-market),  the market for drone deliveries is estimated to reach $583.51 billion by 2023 and the air taxi market is projected to reach $1.5 trillion by 2040, by [Morgan Stanley](https&#58;//www.morganstanley.com/ideas/autonomous-aircraft). Developing an efficient path planning system for UAM has the potential to revolutionize transportation in cities and make them more livable and sustainable. An efficient path-planning algorithm will involve the collision-free path planning of multiple drones flying in same the environment with minimum time and cost. This project offers a unique opportunity to make a significant impact on the future of transportation and logistics by leveraging the latest technology to develop innovative solutions for the challenges of path planning in UAM.

## Project Description

Suggested Steps:
1.	Become familiar with MATLAB®, Simulink®, UAV Toolbox, Sensor Fusion and Tracking Toolbox™ and Optimization Toolbox™ using resources listed in the background material section below.
2.	Set up a [cuboid scenario simulation](https://www.mathworks.com/help/uav/ref/uavscenario.addmesh.html#mw_0fafd983-ce3c-491f-97c0-4a2d240e1a82) that includes multiple static obstacles, like an urban environment, using [UAV Toolbox](https://www.mathworks.com/products/uav.html). 
3.	Develop 3D path planning algorithm using UAV Toolbox for collision-free drone flight.  Take advantage of path planning resources for single drone.
4.	Extend the path-planning algorithm to multiple drones. It will require the centralized tracking of all the drones with information about their positions and velocities, to continuously provide collision free guidance, you can use the ground truth data from the simulated drones to start with. Learn about centralized tracking from examples mentioned in the Background Material Section.
5.	Test the algorithm in a cuboid scenario environment with multiple drone flights.

Advanced Work:

1.  Leverage [Sensor Fusion and Tracking Toolbox™](https://www.mathworks.com/products/sensor-fusion-and-tracking.html) and data from simulated sensors to estimate and track the positions and velocities of all the drones.
2.  Develop a task planning algorithm that considers planning pickups, and delivery tasks, and allotting them to appropriate drones. Further, optimize this process using the Optimization toolbox.
3.	Complement the 3D path planning algorithm with the task planning algorithm and test them in a photorealistic simulation of an urban environment. 
4.	Develop a decentralized obstacle avoidance algorithm to avoid obstacles (dynamic/static) if they come in a nearby range. Integrate it with the rest of the system.


## Background Material

-	Getting started self-paced courses – [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink), and [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim) 
-	Learn Simulation process – [UAV Package Delivery](https://www.mathworks.com/help/uav/ug/uav-package-delivery.html)
-	Video series on [Motion Planning Hands-on Using RRT Algorithm](https://www.mathworks.com/videos/series/motion-planning-hands-on-using-rrt-algorithm.html) and [Autonomous Navigation](https://www.mathworks.com/videos/series/autonomous-navigation.html)
-	[UAV Toolbox examples](https://www.mathworks.com/help/uav/examples.html?category=planning-and-control&exampleproduct=all&s_tid=CRUX_lftnav) 
-	Path Planning examples 
    -	[Path Planning - MATLAB & Simulink](https://www.mathworks.com/discovery/path-planning.html)
    -	[Path Following with Obstacle Avoidance in Simulink](https://www.mathworks.com/help/nav/ug/path-following-with-obstacle-avoidance-in-simulink.html)
-	Centralized tracking examples:  
    -	[Grid-Based Tracking in Urban Environments Using Multiple Lidars](https://www.mathworks.com/help/driving/ug/grid-based-tracking-in-urban-environments-using-multiple-lidars.html)
    -	[Motion Planning in Urban Environments Using Dynamic Occupancy Grid Map](https://www.mathworks.com/help/nav/ug/motion-planning-in-urban-environments-using-dynamics-occupancy-grid-map.html)
    -	[Object Tracking and Motion Planning Using Frenet Reference Path](https://www.mathworks.com/help/driving/ug/object-tracking-and-motion-planning-using-frenet-reference-paths.html)
    -	[Lidar and Radar Fusion in Urban Air Mobility Scenario](https://www.mathworks.com/help/fusion/ug/lidar-and-radar-fusion-in-an-urban-air-mobility-scenario.html) 


Suggested readings:

1.	H. Ma, J. Li, T. K. S. Kumar, and S. Koenig, “Lifelong multi-agent path finding for online pickup and delivery tasks,” in International Conference on Autonomous Agents and Multiagent Systems, 2017, pp. 837–845
2.	P. Surynek, “Multi-goal multi-agent path finding via decoupled and integrated goal vertex ordering,” in AAAI Conference on Artificial Intelligence, 2021, pp. 12 409–12 417
3.	B. P. Gerkey and M. J. Matarić, “A formal analysis and taxonomy of task allocation in multi-robot systems,” International Journal of Robotics Research, pp. 939–954, 2004.
4.	H. Ma, D. D. Harabor, P. J. Stuckey, J. Li, and S. Koenig, “Searching with consistent prioritization for multi-agent path finding,” in AAAI Conference on Artificial Intelligence, 2019, pp. 7643–7650
5.	Brian Coltin, “Multi-agent Pickup and Delivery Planning with Transfers”, PhD Thesis, Carnegie Mellon University Pittsburgh, Pennsylvania 15213 May 2014 
6.	Xiaohu Wu, Yihao Liu, Xueyan Tang, Wentong Cai, “Multi-Agent Pickup and Delivery with Task Deadlines”, Proceedings of the Fourteenth International Symposium on Combinatorial Search (SoCS 2021)


## Impact

Contribute to advancing drone applications in UAM and revolutionizing the logistic industry.

## Expertise Gained 

Autonomous Vehicles, Drones, Robotics, Multi-agent System, Optimization, Sensor Fusion and Tracking, UAV, Modeling and Simulation

## Project Difficulty

Master's, Doctoral, Bachelor

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/85) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

247
