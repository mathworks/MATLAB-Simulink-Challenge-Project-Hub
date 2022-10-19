**Project 236:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/clean-energy.jpg"  width=500 /></td>
<td><p><h1>Techno-Economic Assessment of Green Hydrogen Production</h1></p>
<p>Perform early-stage economic feasibility of an energy project to determine project viability.</p>
</table>

## Motivation

The main sources of global greenhouse gas emissions come from transportation, electricity generation and industrial processes. Green hydrogen is produced from the electrolysis of water, powered by renewable energy sources, and is being considered as a pathway to decarbonize energy dense sectors such as aviation, and industrial manufacturing. Most hydrogen produced today is from reforming of natural gas, but this method releases greenhouse gas into the atmosphere. A key challenge is how to produce green hydrogen economically and in a repeatable way, given the variable nature of renewable energy.

## Project Description

Develop a framework to perform techno-economic assessment of a green hydrogen production system. 

Suggested steps:
1.	Become familiar with the included green hydrogen production model and use this Simscape model as the basis of your project.
2.	Add economic signals to the Simscape model, including capital cost, operational cost, and cost of grid electricity.
3.	Download and import electricity price data from appropriate independent system operators (for example [New England ISO Express](https://www.iso-ne.com/markets-operations/iso-express) ).
4.	Change the location of the system, by importing solar irradiance data (for example [North America National Solar Radiation Database](https://nsrdb.nrel.gov/data-sets/how-to-access-data)) from different locations included in the StationData data structure.
5.	Create a MATLAB script that will automate the loading of data, run the simulation at different locations, and calculate economic cost. Use parallel computing if possible.
6.	Document your approach and findings, and make recommendations on how to effectively assess techno-economic feasibility of energy projects. Document any limitations in your approach.

Project variations:

1.	Modify the operation of the energy storage system, to reduce cost of grid electricity at a given location.
2.	Size the energy storage system at each location so no grid electricity is needed.
3.	Extend economic analysis by adding balance-of-plant considerations, such as cost of water supply.


## Background Material

-	[Model included in this repository](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/tree/main/projects/Techno-Economic%20Assessment%20of%20Green%20Hydrogen%20Production/techno_economic_green_hydrogen_model)
-	Video:
[Techno-Economic Analysis of a Solar-Powered Green Hydrogen Production System](https://www.youtube.com/watch?v=cpttz8Q7jww)
-	Example
[Techno-Economic Analysis of Hybrid Renewable Energy System with PSO - File Exchange - MATLAB Central (mathworks.com)](https://www.mathworks.com/matlabcentral/fileexchange/54205-techno-economic-analysis-of-hybrid-renewable-energy-system-with-pso)


## Impact

Connect economic aspect to technical design.

## Expertise Gained 

Sustainability and Renewable Energy, Modeling and Simulation, Electrification


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/72) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

236
