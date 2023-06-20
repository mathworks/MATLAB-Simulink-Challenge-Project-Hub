**Project 221:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/objectBehavior.jpg"  width=500 /></td>
<td><p><h1>Classify Object Behavior to Enhance the Safety of Autonomous Vehicles</h1></p>
<p>Automatically classify behavior of tracked objects to enhance the safety of autonomous systems.</p>
</table>

## Motivation

Autonomous vehicles will transform transportation and change how we move around and receive goods. The safety of those systems is paramount. To be able to operate safely in a complex environment, the autonomous vehicle uses sensors to detect and track objects in its vicinity, for example pedestrians, bicyclists, and other vehicles. However, estimating the motion of objects around the autonomous vehicle is insufficient. The next level is for the autonomous vehicle to classify the behavior of the objects, whether safe or unsafe, with respect to it. 

Consider the following examples:
1.	A safe driver that follows the rules of the road vs. an aggressive driver, such as changing lanes aggressively at various speeds that might pose a risk to the autonomous vehicle.
2.	A pedestrian that walks safely by the side of the road vs. a young child chasing a ball that might suddenly start crossing the road.
Classifying the behavior of tracked objects can help the autonomous vehicle to predict the motion of these objects and plan accordingly.


## Project Description

Use the [Automated Driving Toolbox™](https://www.mathworks.com/products/automated-driving.html) to simulate realistic scenarios that contain vehicles, pedestrians, and roads. Use the [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html), [the Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html), [the Reinforcement Learning Toolbox™](https://www.mathworks.com/products/reinforcement-learning.html) or other toolboxes to learn the behaviors of safe and risky actors in the scenario.

Suggested steps:
1. Create scenario sets for training:
   	1. Identify a type of scenario, e.g., highway driving, pedestrian crossing the road, etc.
   	2. Define parameters and characteristics of safe and risky objects in a scenario.
   	3. Create a set of scenarios with objects (vehicles, pedestrians) exhibiting safe and risky behaviors and trajectories.  
   	4. Collect and label object motion and trajectories. This forms your ground truth.
2. Train learning algorithms to classify between safe and risky object behaviors in a scenario.

Advanced project work: 

Use the scenario to simulate sensor data coming from the autonomous vehicle sensors. Use the [Sensor Fusion and Tracking Toolbox™](https://www.mathworks.com/products/sensor-fusion-and-tracking.html) to track the vehicles and pedestrians in the scene. Use the learned behaviors to classify safe and risky objects to test the ability of your trained algorithm to classify the behavior of tracked objects. Use the following steps:
1.	Simulate autonomous vehicle sensors to collect sensor data.
2.	Configure a tracking system to estimate the motion of the actors in the scenario.
3.	Apply the learning algorithms you trained in the first part of the project to classify the behaviors of tracked objects.
4.	Assess the robustness of your classifier to errors introduced by the sensing and tracking. 

Project variations:  
1.	Extend this work to autonomous aerial vehicles.
2.	Extend this work to environments where humans and robots work together: manufacturing, warehouses, etc.
3.	Extend this work to off-road conditions, e.g., agricultural, mining scenarios, etc.


## Background Material

- [Examples on how to generate scenarios using Driving Scenario Designer and Unreal Engine](https://www.mathworks.com/help/driving/examples.html?category=scenario-simulation)
- [Driving Scenario Designer](https://www.mathworks.com/help/driving/ref/drivingscenariodesigner-app.html)
- [Unreal Engine Scenario Simulation](https://www.mathworks.com/help/driving/unreal-engine-scenario-simulation.html)
- [RoadRunner](https://www.mathworks.com/products/roadrunner.html)

Suggested readings
- [Spatiotemporal Relationship Reasoning for Pedestrian Intent Prediction](https://stip.stanford.edu/)
- [Predicting Future Movements of Pedestrians and Autonomous Vehicles](https://www.gislounge.com/predicting-future-movements-of-pedestrians-and-autonomous-vehicles/)



## Impact

Make autonomous vehicles safer by classifying behaviors of objects around them.

## Expertise Gained 

Artificial Intelligence, Autonomous Vehicles, Robotics, Drones, Deep Learning, Explainable AI, Machine Learning, Mobile Robots, Neural Networks, Reinforcement Learning, Sensor Fusion and Tracking, UAV, UGV, Automotive


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/53) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed by

[Eladki](https://github.com/eladki)

## Project Number

221
