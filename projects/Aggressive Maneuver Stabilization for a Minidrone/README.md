**Project 230:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/agressivemanuvre3.png"  width=500 /></td>
<td><p><h1>Aggressive Maneuver Stabilization for a Minidrone</h1></p>
<p>Design a controller to enable a micro aerial vehicle to stabilize in the scenario of an external aggressive disturbance.</p>
</table>

## Motivation

The Unmanned Aerial Vehicle industry is a growing field with its applications in transportation, delivery, agriculture, and surveillance. The MathWorks tools play a crucial part in designing these systems using the Model-Based Design approach – whether to enable the [Pilotless Flight of Aurora Centaur](https://www.mathworks.com/videos/pilotless-flight-of-aurora-centaur-119494.html) or to develop Airnamics [Unmanned Aerial System for Close-Range Filming](https://www.mathworks.com/company/user_stories/airnamics-develops-unmanned-aerial-system-for-close-range-filming-with-model-based-design.html). 

Performing aggressive maneuvers is a challenging control problem for UAVs that need to be addressed for all applications where agile flying vehicles need to move with high acceleration and pass-through obstacles with a precise pose value that can approach singularity. Moreover, such control strategies will be necessary to overcome the hurdles caused by unexpected external circumstances – a strong gust of wind, relaunching from a failed vehicle landing, an obstacle disturbance in a cluttered space, etc.


## Project Description

Use MATLAB and Simulink to design and implement a non-linear control strategy able to deal with high disturbances, fast input variations, and track complex trajectories using the tools that are used by the aerospace industry. Provide an aggressive input to the minidrone to change its position and orientation and stabilize it to the designated position and orientation. 
Suggested Steps:
1.	Become familiar with the MATLAB and Simulink using resources listed in the Background Material section below.
2.	Install the [Simulink Support Package for Parrot Minidrones](https://www.mathworks.com/matlabcentral/fileexchange/63318-simulink-support-package-for-parrot-minidrones) from MATLAB-Add-Ons.
3.	Use the [Parrot Minidrone Hover Model](https://www.mathworks.com/help/supportpkg/parrot/ug/fly-a-parrot-minidrone-using-the-hover-simulink-model.html) as the baseline controller.
4.	Improve the altitude estimator and controller for flying over objects by using the pressure sensor along with the altitude sensor
5.	Design a controller to enable the vehicle to hover from
    - A freehand throw
    - A free fall
    - An upside-down orientation [1]
6.	Provide aggressive inputs to the aerial vehicle using inputs in simulations. Update the controller and state estimator to stabilize the minidrone’s flight. You can use the data from the minidrone’s sensors. 

7. Hardware Deployment: If you have the hardware available with you, deploy your algorithm designed in simulations on the Parrot Mambo Minidrone hardware. Check the Background Material for details.

Advanced project work:
1.	Generate a complex trajectory for maneuver to have the drone follow it – in simulations and deployed on the hardware.
Project variations:
1.	Implement a quaternion-based attitude controller and state estimator [2], [3] to enable the drone to perform a 360 degrees flip maneuver 


## Background Material

-	Getting started self-paced courses - [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted?s_tid=abt_train_b), [Simulink Onramp](https://www.mathworks.com/learn/tutorials/simulink-onramp.html), [Control Design Onramp](https://www.mathworks.com/learn/tutorials/control-design-onramp-with-simulink.html)
-	Deploy to hardware using [Simulink Support Package for Parrot Minidrones](https://www.mathworks.com/help/supportpkg/parrot/)
-	Video series on [Drone Simulation and Control](https://www.mathworks.com/videos/series/drone-simulation-and-control.html) that explains the workflow for developing a control system for the Parrot Mambo Minidrone and explains how to deploy the algorithms on the hardware

Suggested readings: 

[1] Taeyoung Lee, Melvin Leok, and N. Harris McClamroch, " Geometric Tracking Control of a Quadrotor UAV on SE(3) ", 49th IEEE Conference on Decision and Control December 15-17, 2010 Hilton Atlanta Hotel, Atlanta, GA, USA 

[2] Emil Fresk and George Nikolakopoulos, “Full Quaternion Based Attitude Control for a Quadrotor”, 2013 European Control Conference (ECC) July 17-19, 2013, Zürich, Switzerland. 

[3] C. G. Mayhew, R. G. Sanfelice, and A. R. Teel, “Quaternion-based hybrid control for robust global attitude tracking,” IEEE Transactions on Automatic control, vol. 56, no. 11, pp. 2555–2566, 2011. 

## Impact

Contribute to advancements in aerial vehicle control in contracted spaces with unforeseen environment conditions.

## Expertise Gained 

Autonomous Vehicles, Drones, Robotics, Aerospace, Low-cost Hardware, Modeling and Simulation, State Estimation, UAV, Control


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/63) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

230
