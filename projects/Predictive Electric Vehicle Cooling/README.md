**Project 194:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/electricVehicle.jpg"  width=500 /></td>
<td><p><h1>Predictive Electric Vehicle Cooling</h1></p>
<p> Improve range, performance, and battery life by designing a cooling algorithm that keep EV battery packs cool when they need it most.</p>
</table>

## Motivation

Electric vehicle (EV) adoption is growing at an amazing rate. The battery packs that these vehicles carry are their lifeblood, and excessive heat can limit their performance.
Charging and discharging performance can be limited by thermal constraints. Heat exposure can limit the range and life of battery packs. The thermal time constant of larger battery packs is long and, thermostatic cooling models can be too slow, as they may first cool the pack when it already has a large amount of thermal energy.
Predictively cooling the pack based on expected thermal demands can help keep it near its optimal temperature range. This can allow faster charging and discharging, longer range, and extended battery life.

## Project Description

Work with [Simscape™ Fluids™](https://www.mathworks.com/products/simscape-fluids.html) to create a plant and predictive controller for EV cooling system with dynamic loads using MATLAB® and Simulink®. 
The model should be detailed enough to capture important dynamics. Dynamic loads include outside environmental conditions, fast charging, and rapid acceleration/deceleration. Demonstrate that the predictive control system can keep battery temperature in the desired range. Demonstrate whether the control can allow for a greater performance envelope for motor loads and fast charging. Compute the change in energy requirement from operating the cooling system predictively vs. reactively.

Suggested steps:
1.	Perform a literature search to understand EV cooling systems, battery management, and drive cycles.
2.	Study a [dynamic EV cooling model](https://www.mathworks.com/help/physmod/hydro/ug/sscfluids_ev_battery_cooling.html)
3.	Model different loads that the battery can experience such as fast charging and rapid acceleration.
4.	Create a baseline by implementing a simple controller.
5.	Create a predictive controller using information such as incoming charge, throttle position, and location.
6.	Demonstrate the value of your controller in keeping the battery temperature controlled and compare the energy requirements of the cooling system with different controllers.

Advanced project work:

Extend the work to predict battery range and life expectancy improvement with the predictive controller.


## Background Material

- [Simscape Fluids Documentation](https://www.mathworks.com/help/physmod/hydro/index.html).
- T. Huria, M. Ceraolo, J. Gazzarri,R. Jackey. "High Fidelity Electrical Model with Thermal Dependence for Characterization and Simulation of High Power Lithium Battery Cells," IEEE International Electric Vehicle Conference, March 2012



## Impact

Contribute to the electrification of transport worldwide. Increase the range, performance, and battery life of EVs.

## Expertise Gained 

Sustainability and Renewable Energy, Autonomous Vehicles, Automotive, Control, Electrification, Modeling and Simulation, Optimization


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/25) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[MUdengaard](https://github.com/MUdengaard)

## Project Number

194
