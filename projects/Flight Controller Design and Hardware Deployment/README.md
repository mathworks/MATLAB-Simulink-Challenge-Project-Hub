**Project 217:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/drone.jpg"  width=500 /></td>
<td><p><h1>Flight Controller Design and Hardware Deployment</h1></p>
<p>Build a mini drone and use the PX4 Hardware Support package to design the flight controller using Simulink.</p>
</table>

## Motivation

Unmanned aerial vehicles (UAVs) are being used across a large variety of industries. Of the many industries, they are set to revolutionize transportation, delivery, agricolture, and surveillance. 
MATLAB® and Simulink® are playing an important role by making it easy for customers to design UAVs for their applications. Simulink enables users to not only design and simulate algorithms but also quickly deploy these algorithms on a real UAV and fly the UAV. The end goal of this project is to show how a user can move from design to deployment for UAVs.

## Project Description

Work with [UAV Toolbox Support package for PX4® Autopilots](https://www.mathworks.com/help/supportpkg/px4/index.html) that enables you to leverage algorithms and peripherals from the PX4 middleware and deploy Simulink models to the PX4 Autopilot. Design a flight controller in Simulink and deploy it to a PX4 Autopilot based UAV and fly the UAV.

Suggested steps:

1.	Use the [QAV250](https://shop.holybro.com/pixhawk-4-mini-qav250-kit_p1125.html) kit with the popular QAV250 frame to build a mini-UAV
2.	Use the [Pixhawk 4 mini]( https://docs.px4.io/master/en/flight_controller/pixhawk4_mini.html) as the Autopilot for the UAV
3.	Establish External mode communication via [radio](https://shop.holybro.com/transceiver-telemetry-radio-v3_p1103.html) between the Autopilot and PC. 
4.	Use the [PX4 Simulink blocks]( https://www.mathworks.com/help/supportpkg/px4/referencelist.html?type=block&amp;listtype=cat&amp;category=index&amp;blocktype=all&amp;capability=&amp;s_tid=CRUX_topnav) to use the flight estimator from the PX4 middleware
5.	Design the flight controller using Simulink and deploy it to PX4 Autopilot. Use External mode to tune parameters and monitor signals

Project variations: 

Build a UAV plant model in Gazebo and use PX4 host target feature to design the flight controller in Simulink and deploy it as executable on the host and perform a Software in the loop simulation with Gazebo plant.

1.	Establish a connection between Gazebo and Simulink PX4 host target 
2.	Use PX4 host target for deployment
3.	Use the PX4 Simulink blocks to use the flight estimator from the PX4 middleware
4.	Design the flight controller using Simulink and deploy it as a PX4 host target. Use External mode to tune parameters and monitor signals

Advanced project work:

Setup AirSim that provides physical and virtual simulations, design flight controller in Simulink and run Software in loop using PX4 host target
Reuse a UAV plant model from [Airsim](https://docs.px4.io/master/en/simulation/airsim.html) and use [PX4 host targetPX4 host target](https://www.mathworks.com/help/supportpkg/px4/ug/deployment-using-px4hosttarget-jmavsim.html) feature to design the flight controller in Simulink and deploy it as executable on the host and perform a Software in the loop simulation with Airsim.

1.	Establish a connection between Airsim and Simulink PX4 host target 
2.	Use PX4 host target for deployment
3.	Use the PX4 Simulink blocks to use the flight estimator from the PX4 middleware
4.	Design the flight controller using Simulink and deploy it as a PX4 host target. Use External mode to tune parameters and monitor signals

## Background Material

Products:
-	[UAV Toolbox Support Package for PX4 Autopilots](https://www.mathworks.com/help/supportpkg/px4/index.html?s_tid=CRUX_lftnav)

-	[UAV Toolbox](https://www.mathworks.com/help/uav/getstarted.html)

-	[Simulink Support Package for Parrot Mini drones](https://www.mathworks.com/help/supportpkg/parrot/?s_tid=srchbrcm)

Examples:
-	[Attitude Control with PX4 HSP on Host target](https://www.mathworks.com/help/supportpkg/px4/ref/attitude-control-px4-external-input.html)

-	[Position Tracking with PX4 HSP on Host target](https://www.mathworks.com/help/supportpkg/px4/ref/position-tracking-example.html)

-	[Accessing PX4 middleware using uORB blocks](https://www.mathworks.com/help/supportpkg/px4/ref/getting-started-uorb-blocks.html)

-	[Fly a Parrot mini drone using Simulink HSP](https://www.mathworks.com/help/supportpkg/parrot/ref/color-detection-and-landing-parrot-example.html)


## Impact

Expedite UAV design and assembly with model-based design


## Expertise Gained 

Drones, Autonomous Vehicles, Control, Low-cost Hardware, UAV


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/48) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

217
