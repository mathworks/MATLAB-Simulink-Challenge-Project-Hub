**Project 208:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ImagePathPlanning.png"  width=300 /></td>
<td><p><h1>Path Planning for Autonomous Race Cars</h1></p>
<p> Develop an algorithm to compute an optimal path for racing tracks. </p>
</table>

## Motivation

With advancements in automotive technology, various industries and academia are investing in path planning algorithms for driverless vehicles. As an example, Formula Student competitions have introduced the driverless category, where the goal of the teams is to design and build an autonomous vehicle that can compete in different disciplines. In such competitions or global racing championships such as Formula 1, the optimal racing line is one of the winning factors. In basic terms, an optimal racing line is the shortest path through a race circuit to achieve the best lap-time. 
Developing an optimal racing line algorithm will help the teams to compute the path for new tracks, improving the vehicle’s overall performance. This will also serve as a reference to train the drivers participating in conventional racing championships. 


## Project Description

Finding an optimal racing line can be considered an optimization problem. Work with MATLAB® and the [Optimization Toolbox™](https://www.mathworks.com/products/optimization.html) to develop the algorithm. 

Suggested steps:
1.	Perform a Google search on optimization-based path planning.
2.	Define a basic [bicycle vehicle model](https://www.mathworks.com/help/robotics/ref/bicyclekinematics.html) of the car.
3.	Create or import a racetrack using [RoadRunner](https://www.mathworks.com/products/roadrunner.html) or [Driving Scenario Designer] (https://www.mathworks.com/help/driving/ref/drivingscenariodesigner-app.html)
4.	Given a known racetrack, generate a minimum-time velocity profile [1]. 
5.	Formulate an optimization problem. The two most common approaches for defining the optimization problem are minimizing the time [3] and minimizing the curvature [4].  You can follow either of these two approaches and use the [Optimization Toolbox™](https://www.mathworks.com/products/optimization.html) to solve the problem. 
6.	Include a 2D visualization plot to demonstrate the vehicle trajectory in real-time. 
7.	Test the robustness of the algorithm on different racetracks. 

Advanced project work:
1.	Add static obstacles on racetracks and compute the optimal racing line. Use the generated optimal racing line and velocity profile as reference for a high-fidelity vehicle dynamics models provided by the [Vehicle Dynamics Blockset™](https://www.mathworks.com/products/vehicle-dynamics.html). Extend the model to track the reference path using autonomous driving techniques. 
2.	Incorporate electrical and 3D mechanical behavior into the model using a Simscape model for the vehicle. Extend optimization examples in the [Simscape Vehicle Templates](https://www.mathworks.com/matlabcentral/fileexchange/79484-simscape-vehicle-templates) to tune the suspension design and include battery usage into the optimization problem. 


## Background Material

-	[Real-time Trajectory Optimization for Autonomous Vehicle Racing](https://github.com/janismac/RacingTrajectoryOptimization)
-	[Solving Optimization Problems with MATLAB](https://www.youtube.com/watch?v=4wgI3-RQqTY).
-	[Optimization Toolbox](https://www.mathworks.com/products/global-optimization.html)  
-	[Global Optimization Toolbox](https://www.mathworks.com/products/global-optimization.html)
-	[Design, simulate, and deploy path planning algorithms](https://www.mathworks.com/discovery/path-planning.html)


## Impact

Push racing car competitions into fully autonomous mode.

## Expertise Gained 

Autonomous Vehicles, Automotive, Optimization, Modeling and Simulation


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/39) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[mw-veeralakshendra](https://github.com/veeralakshendra)

## Project Number

208
