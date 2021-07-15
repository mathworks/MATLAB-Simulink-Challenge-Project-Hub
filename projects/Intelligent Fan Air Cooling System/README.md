**Project 161:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the rewards

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/fan.jpg"  width=400 /></td>
<td><p><h1>Intelligent Fan Air Cooling System</h1></p>
<p> Design an intelligent fan cooling system to moderate temperatures in a building to eliminate or reduce the need for air conditioning systems.</p>
</table>

## Motivation

More than 90% of all homes in United States and Japan have air conditioners [1]. By 2050, 2/3 of the world’s households could have an air conditioner. Air conditioners use about 6% of all the electricity produced in the United States, at an annual cost of about $29 billion to homeowners [2]. As a result, roughly 117 million metric tons of carbon dioxide are released into the air each year from the US alone. 

Extractor or two-way fan systems have the potential to reduce energy over more complex conditioner systems. The cooler evening and night-time air can be exchanged with warmer interior air. Your task is to design an intelligent control system that will maximize the time within the desired temperature range using models for airflow and capacitive building effects.

## Project Description

Night-time temperatures are generally lower than daytime temperatures. Model a simple fan mechanism that pumps-in or extracts air based on temperature differential between inside and outside. The cooler night-time air can be used to bring down the temperature of air and capacitive elements within the house. Over the course of the day, the air and the cooler structure will keep temperatures lower, until it crosses the evening or night-time temperatures.

Develop a simulation model and an intelligent control mechanism for a simple fan system. The fan system could be:
-   A [twin fan system](https://en.wikipedia.org/wiki/Window_fan), or
-	An extractor fan (e.g., [window](https://en.wikipedia.org/wiki/Window_fan) or [whole-house](https://en.wikipedia.org/wiki/Whole-house_fan))

Use temperature measurements from outside and inside the building and model building/room capacity as well as seasonal weather patterns to optimally maintain a temperature inside the building within a defined comfort range.

Create simulation models for the thermal behavior of a building, fan system, and control system. 

**Part 1:** Use Simulink and Simscape to build a dynamic heat and airflow simulation model for a building that includes&#58;

-	Convective heat transfer: airflow between rooms and to the outside (via drafts, etc.)
-	Conductive heat transfer: via walls, windows, doors and capacitive elements within the house.

This could be a simple model (e.g., [3], [4]) or a more complex model (e.g., [4]).

**Part 2:** Devise and model a one or two-way fan cooling device and its influence on the room temperature. Model air flow using a physics model. Consider calibrating the parameters with measured data.

**Part 3:** Develop a control system to maintain a temperature as close as possible to a specified goal or within a desired range based on temperature readings from inside and outside of the building at a specified location in the building. 


**Advanced project work:**

Modeling and control
-	Use predicted weather temperatures to design a control system that will maximize the time within the desired temperature range.
-	Consider additional temperature measurement points for improved control.
-	Develop a compressor-based air conditioner model using physics model or actual measured data for comparison of energy usage.
-	Compare effectiveness and energy use vs a traditional air conditioning system or a two-way vs extractor fan system.
-	Consider what a user can prescribe: preferred temperature, or temperate minimums and maximums that they can accept.
-	Consider adding humidity measurements and ranges as an additional variable.

Analytics
-	Using weather models, predict which locations in the world this mechanism would be most effective.
-	Predict global energy savings and carbon footprint reduction could be vs traditional air conditioner. 

Prototype
-	Prototype your fan system using readily available components and an Arduino (or equivalent) and the [Arduino Support package for Simulink](https://www.mathworks.com/hardware-support/arduino-simulink.html).


## Background Material

-   [1] IEA (2018), [The Future of Cooling](https://www.iea.org/reports/the-future-of-cooling.), IEA, Paris 
-   [2] Department of Energy, [Air Conditioning Overview](https://www.energy.gov/energysaver/home-cooling-systems/air-conditioning#:~:text=Three%2Dquarters%20of%20all%20homes,into%20the%20air%20each%20year.conditioning)
-   [3] [Simulink thermal model of a house](https://www.mathworks.com/help/simulink/slref/thermal-model-of-a-house.html), Simulink Reference Manual
-   [4] [Simscape House Heating System](https://www.mathworks.com/help/physmod/simscape/ug/house-heating-system.html), Simscape Reference Manual
-   [5] [Building and HVAC Simulation in MATLAB/Simulink](https://it.mathworks.com/content/dam/mathworks/mathworks-dot-com/solutions/aerospace-defense/files/2017/expo-de/gebaude-und-anlagensimulation-mit-matlab-und-simulink-am-beispiel-des-ffg-projekts-saluh.pdf) – FFG Project SaLüH!, MATLAB Expo, Munich, 2017


## Impact

Contribute to energy and carbon footprint reduction.

## Expertise Gained 

Sustainability and Renewable Energy, Control, Modeling and Simulation, Optimization 

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/17) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[mw-agrace](https://github.com/mw-agrace)

## Project Number

161
