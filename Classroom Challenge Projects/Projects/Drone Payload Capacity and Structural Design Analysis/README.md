<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/QuadcopterDrone.jpg"  width=500 /></td>
<td><p><h1>Drone Payload Capacity and Structural Design Analysis</h1></p>
<p>Test different drone arm designs and materials to maximize payload capacity while maintaining structural integrity by performing thrust-to-weight analysis and finite element analysis in MATLAB.</p>
</table>

**THIS GITHUB REPO IS CURRENTLY BEING EDITED 05/14/26**

## Motivation
As drone use becomes increasingly common, such as in aerial photography, infrastructure inspection, and package delivery, there is a critical need to design lightweight structures that can safely support increasing payload demands. This project focuses on the engineering challenge of optimizing drone arm geometry and material selection to maximize payload capacity while ensuring structural integrity under motor-induced loads. By applying force balance analysis alongside finite element modeling, the work reflects industry practices used to design reliable, high-performance components in commercial drones, aircraft structures, and automotive systems.

## Project Description
This project challenges students to apply core principles from physics and engineering, such as force balance, material properties, and structural analysis, to the real-world problem of designing a quadcopter drone capable of maximizing payload capacity. 

First, you will propose at least two drone arm designs. Using the provided material properties, the weight of other drone components, and a minimum payload requirement, you will use MATLAB to perform thrust-to-weight analysis across your designs to ensure safety margins and maximize payload capacity. You will then create a 3D model of one design using a CAD software of your choice, import it into MATLAB, and perform finite element analysis to evaluate deformation and stress under motor thrust and component weight, conducting a parameter sweep of material properties to identify the material that provides the highest structural integrity. As an optional extension, you will also minimize the total material cost of your design by incoporating the average cost of each material option.

Through this process, students explore authentic engineering tradeoffs, such as balancing weight, strength, and efficiency, to arrive at a design solution.

### Suggested Steps
Open the "DroneDesign_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.

1. Gather your starter assumptions and load the material properties into MATLAB.
   - Load the provided `droneMaterials.mat` file into MATLAB. This contains a data struct with the material properties for six different materials commonly used for drones. For each material, you have been provided the following information:
       - Density ($\rho$), in $kg/m^3$
       - Young's Modulus ($E$) in Pa
       - Poisson's ratio ($\nu$), unitless
       - Yield strength, in Pa
       - Average cost per meter in US dollars
   - For this project, you can assume the following design parameters:
       - Quadcopter drone with 4 motors and 4 propellers
       - Each motor can provide up to 1kg thrust
       - Acceleration due to gravity: $g = 9.81m/s^2$
       - Total weight of the drone components without the arms or the payload
2. 


### Expected Results for Project Solution


### Optional Extension


### Learning Outcomes


## Suggested Background Material
### 1. Statics and Mechanics

### 2. Drone/Flight Basics

### 3. MATLAB Fundamentals
- Basic scripting and function creation
- Plotting 
- Using MATLAB for structural calculations (arrays, matrix operations)
  
### 4. Optional
- Optimization 


## MathWorks Tutorials
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Introduction to Finite Element Analysis in MATLAB](https://matlabacademy.mathworks.com/details/introduction-to-finite-element-analysis-with-matlab/otmlfea)
- (For optional extension) [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim)


## Project Difficulty
- Intermediate
    - Community college transfer students
    - 2nd year undergraduate or above 
