Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Energy-Optimal%20Trajectory%20Planning%20for%20Multirotor%20Drones&tfa_2=237)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Energy-Optimal%20Trajectory%20Planning%20for%20Multirotor%20Drones&tfa_2=237)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/UAV_plan.png"  width=500 /></td>
<td><p><h1>Energy-Optimal Trajectory Planning for Multirotor Drones</h1></p>
<p>Develop a trajectory planning for multirotor drones that minimizes energy consumption.</p>
</table>

## Motivation

Electric multi-rotor drones are becoming popular vehicles for variety of applications such as delivery, inspection, aerial photography, mapping and surveying, etc. Moreover, many companies are working on developing and deploying drones for passenger transport in urban areas commonly referred to as Urban Air Mobility (UAM). However, the onboard electric power source still provides a very limited operation time representing the main impediment for long distance and/or high payload rides. Thus, it is crucial to deliver, to a battery powered unmanned drone, a set of operations, including trajectory generation and following, to minimize the energy consumption increasing the success of the mission. 

## Project Description

Develop an optimization-based trajectory planning framework for a multirotor drone that generates a trajectory between initial and final points with optimal energy consumption. The framework utilizes the dynamics of the quadrotor and the battery to generate the optimal trajectory. You may use an existing MATLAB® or Simulink ® representation of a quadcopter model as the basis for your project. You will extend this by developing an optimization-based trajectory planning.    

Suggested steps:
 
1.	Create a MATLAB or Simulink model of a multi-rotor drone, including the vehicle's airframe, motor, battery, and controller. You can leverage the [UAV Toolbox](https://www.mathworks.com/products/uav.html) or the already existing [quadcopter model](https://www.mathworks.com/matlabcentral/fileexchange/63580-quadcopter-drone-model-in-simscape?s_tid=srchtitle) in [Simscape Multibody™](https://www.mathworks.com/products/simscape-multibody.html)
2.	Develop an objective function that takes into account the energy consumption of the drone (use the relation between battery and motor parameters, refer [1]).
3.	Formulate a set of constraints that considers the quadrotor dynamics, motor dynamics, battery dynamics, initial and final states, and the state of charge ([SoC](https://www.mathworks.com/solutions/power-electronics-control/battery-state-of-charge.html)) of the battery. 
4.	Solve the constrained optimization problem using the Optimization Toolbox to get the reference angular speeds of the motors. (If you want to use the Simulink model reference example, learn how to use the Optimization Toolbox  with Simulink)  
Advanced project work 
1.	Include the arriving time in the objective function.
2.	Include the battery state of health (SoH) as a constraint 


## Background Material

-	[UAV Toolbox Examples](https://www.mathworks.com/help/uav/examples.html?category=planning-and-control&s_tid=CRUX_topnav)
-	[Quadcopter Drone Model in Simscape](https://www.mathworks.com/matlabcentral/fileexchange/63580-quadcopter-drone-model-in-simscape?s_tid=srchtitle)
-	[Four Bar Linkage Optimization in Simscape](https://www.mathworks.com/matlabcentral/fileexchange/62371-four-bar-linkage-optimization-in-simscape?s_tid=srchtitle)
-	[Simscape Battery™](https://www.mathworks.com/products/simscape-battery.html)

Suggested Reading:

[1] Schacht-Rodríguez, R., Ponsart, J. C., García-Beltrán, C. D., Astorga-Zaragoza, C. M., Theilliol, D., & Zhang, Y. (2018). Path planning generation algorithm for a class of uav multirotor based on state of health of lithium polymer battery. Journal of Intelligent & Robotic Systems, 91(1), 115-131.


## Impact

Increase mission time of multirotor drones.

## Expertise Gained 

Drones, Robotics, Autonomous Vehicles, Electrification, Modeling and Simulation, Optimization, UAV


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/73) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

237
