**Project 206:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/indoor_propagation.jpg"  width=500 /></td>
<td><p><h1>Optimizing Antenna Performance in an Indoor Propagation Environment</h1></p>
<p> Design an antenna to optimize transmission and reception in indoor environment</p>
</table>

## Motivation

Design and optimization of antennas considering indoor propagation environment can find realistic applications like the placement and orientation of router antennas inside a large room/hall or to construct a multi-point communication network in a large building. It is easy to characterize antennas in ideal free-space environment. However, in an indoor environment, there will be multiple reflection from the floors, walls, and surrounding objects to perturb the ideal radiation behavior of the antenna. This will influence both the signal strength as well as the direction of the beam pattern. As next generation communication technology is moving towards higher frequency region, the impacts of the neighboring objects are more prominent. Currently, these issues are addressed by measurement-based observations only. In this regard, with a prior information of the building environment, one can utilize the Antenna Toolbox™ and other toolboxes like Optimization toolbox™ to optimize an indoor transmission/reception performance of the antenna or antenna arrays. 

## Project Description

Use [Antenna Toolbox ™](https://www.mathworks.com/products/antenna.html) to characterize and optimize the desired transmission and reception characteristics of antenna or antenna arrays inside an indoor propagation environment. Unlike the commonly used measurement-based approach, Antenna Toolbox provides a suitable alternative to optimize the antenna design and placement with prior information of indoor topology. Utilize the material loss properties of Antenna Toolbox to have a more accurate insight of realistic transmission/reception characteristics. A high-level sequence of steps is given below: 

1. Use the [*design*](https://www.mathworks.com/help/antenna/ref/design.html) function on an existing [antenna  catalog]( https://www.mathworks.com/help/antenna/antenna-catalog.html) in Antenna Toolbox ™ to design an isolated antenna element at any arbitrary frequency with the assumption of ideal free-space propagation.  

2. Create indoor propagation scenario as per requirement while specifying the desired location of the receiving user(/s). Use the [installedAntenna](https://www.mathworks.com/help/antenna/ref/installedantenna.html) object of Antenna Toolbox for this purpose. 

3. Optimize the design and orientation parameters of the antenna to achieve expected radiation characteristics like to maximize the signal strength at a particular receiving location or to maximize the average signal strength in multiple receiving ends.  

4. Visualize a full-wave signal coverage map using the capabilities of the Antenna Toolbox ™.  

Advanced project work: 

1. Using the simulation data obtained using Antenna Toolbox, develop a data-based prediction modelling of arbitrary shaped indoor propagation scenario.  

2. Investigate such a model with different radiating elements.  

3. Derive suitable design suggestions for different class of antennas and arrays for future references. 

## Background Material

- [Antenna Toolbox](https://www.mathworks.com/help/antenna/)
- [Optimization Toolbox](https://www.mathworks.com/products/optimization.html)
- [RF Propagation and Visualization](https://www.mathworks.com/help/antenna/gs/rf-propagation-and-visualization.html)

Suggested readings:

[1] A. Cidronali, et. al., "Analysis and Performance of a Smart Antenna for 2.45-GHz Single-Anchor Indoor Positioning", IEEE Transactions on Microwave Theory and Techniques, 58 (1):2010. 

[2] X. Wu, et.al., "60-GHz Millimeter-Wave Channel Measurements and Modeling for Indoor Office Environments", IEEE Transactions on Antennas and Propagation, 65(4): 2017. 

[3] Z. Genc, et.al.,"Robust 60 GHz Indoor Connectivity: Is It Possible with Reflections?”, 2010 IEEE 71st Vehicular Technology Conference, 2010. 

## Impact

Maximize indoor radio signal coverage and reduce energy consumption of signal booster devices.

## Expertise Gained 

5G, Optimization, Smart Antennas, Wireless Communication


## Project Difficulty

Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/37) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[sghosalcem](https://github.com/sghosalcem)

## Project Number

206
