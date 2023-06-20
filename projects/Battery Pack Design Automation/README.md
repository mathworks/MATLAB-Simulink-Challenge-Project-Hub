**Project 142:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the rewards

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/battery.jpg"  width=400 /></td>
<td><p><h1>Battery Pack Design Automation</h1></p>
<p>Reduce the effort required to properly develop a battery pack and contribute to the global transition to zero-emission energy source.</p>
</table>

## Motivation

Batteries are everywhere, from your cell phone to car, and are becoming more and more common each passing day.
In seeing the potential to transform our key automotive, industrial, and robotics area due to increasing energy density the need arises to better automate the design of battery pack systems with customer specification driving the pack design based off of voltage, power, energy, and thermal key attributes.  
Battery pack automation is a challenging problem because of the complexity of the system, downstream impacts on safety critical design, and in the end a detailed optimization problem.


## Project Description

Work with the Powertrain Blockset™ product to automate the battery pack design using MATLAB® and Simulink® with the key characteristics being electrical, cooling, and mass.
The non-linear parameters will be derived using data fit optimization techniques such as Optimization Toolbox and Simulink Design Optimization.
Finally, a workflow that demonstrates battery pack design optimization using an FTP75 and other drive cycles will be developed.

Suggested steps:
1.	Use Lithium Ion battery technologies.  
2. Perform a literature search prior to starting the work.  
3.	Create a 3RC Lithium Cell model with temperature and SOC as input factors and a thermal connection.  https://www.mathworks.com/help/autoblks/ref/equivalentcircuitbattery.html
4.	Fit the 3RC Lithium Cell using the Generate Parameter Data for Equivalent Circuit Battery Block: https://www.mathworks.com/help/autoblks/ug/generate-parameter-data-for-estimations-circuit-battery-block.html.
5.	Develop a tool that will automatically assemble the Lithium Ion Cell block into modules and packs as part of a Simulink model.  The tool should take as an input desired pack voltage, power, energy, module size, thermal connectivity for conduction and convection.  Note, for thermal connectivity consider a cube module that has possible connections on all 6 sides.
6.	Using the tool developed in 5, determine the optimal size of the battery pack that takes into account range, cost, volume, cooling, and mass constraints.  For example, one optimal problem statement would be to maximize range while reducing mass and cost.  Another optimal problem would be just to maximize range.  The Powertrain Blockset EV reference application can be used as a system model.  https://www.mathworks.com/help/autoblks/ug/explore-the-electric-vehicle-reference-application.html

Advanced project work:

Extend this work to Solid State Batteries.


## Background Material

- [Powertrain Blockset](https://www.mathworks.com/products/powertrain.html#tradeoff)
- [Powertrain Block set Examples](https://www.mathworks.com/help/autoblks/examples.html?s_tid=CRUX_topnav)
 
Suggested readings:

- [1] Ahmed, R., J. Gazzarri, R. Jackey, S. Onori, S. Habibi, et al. "Model-Based Parameter Identification of Healthy and Aged Li-ion Batteries for Electric Vehicle Applications." SAE International Journal of Alternative Powertrains. doi:10.4271/2015-01-0252, 4(2):2015.
- [2] Gazzarri, J., N. Shrivastava, R. Jackey, and C. Borghesani. "Battery Pack Modeling, Simulation, and Deployment on a Multicore Real Time Target." SAE International Journal of Aerospace. doi:10.4271/2014-01-2217, 7(2):2014.
- [3] Huria, T., M. Ceraolo, J. Gazzarri, and R. Jackey. "High fidelity electrical model with thermal dependence for characterization and simulation of high power lithium battery cells." IEEE® International Electric Vehicle Conference. March 2012, pp. 1–8.
- [4] Huria, T., M. Ceraolo, J. Gazzarri, and R. Jackey. "Simplified Extended Kalman Filter Observer for SOC Estimation of Commercial Power-Oriented LFP Lithium Battery Cells." SAE Technical Paper 2013-01-1544. doi:10.4271/2013-01-1544, 2013.
- [5] Jackey, R. "A Simple, Effective Lead-Acid Battery Modeling Process for Electrical System Component Selection." SAE Technical Paper 2007-01-0778. doi:10.4271/2007-01-0778, 2007.
- [6] Jackey, R., G. Plett, and M. Klein. "Parameterization of a Battery Simulation Model Using Numerical Optimization Methods." SAE Technical Paper 2009-01-1381. doi:10.4271/2009-01-1381, 2009.
- [7] Jackey, R., M. Saginaw, T. Huria, M. Ceraolo, P. Sanghvi, and J. Gazzarri. "Battery Model Parameter Estimation Using a Layered Technique: An Example Using a Lithium Iron Phosphate Cell." SAE Technical Paper 2013-01-1547. Warrendale, PA: SAE International, 2013.  

## Impact

Contribute to the global transition to zero-emission energy source.

## Expertise Gained

Sustainability and Renewable Energy, Control, Electrification, Optimization, Parallel Computing

## Project Difficulty

Master’s level

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/13) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

142

## Proposed By

[kgrand-mw](https://github.com/kgrand-mw)
