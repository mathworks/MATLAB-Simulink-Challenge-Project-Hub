<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/QuadcopterDrone.jpg"  width=500 /></td>
<td><p><h1>Drone Payload Capacity and Structural Design Analysis</h1></p>
<p>Test different drone arm designs and materials to maximize payload capacity while maintaining structural integrity by performing thrust-to-weight analysis and finite element analysis in MATLAB.</p>
</table>

**THIS GITHUB REPO IS CURRENTLY BEING EDITED 05/13/26**

## Motivation
As drone use becomes increasingly common, such as in aerial photography, infrastructure inspection, and package delivery, there is a critical need to design lightweight structures that can safely support increasing payload demands. This project focuses on the engineering challenge of optimizing drone arm geometry and material selection to maximize payload capacity while ensuring structural integrity under motor-induced loads. By applying force balance analysis alongside finite element modeling, the work reflects industry practices used to design reliable, high-performance components in commercial drones, aircraft structures, and automotive systems.

## Project Description
This project challenges students to apply core principles from physics and engineering, such as force balance, material properties, and structural analysis, to the real-world problem of designing a drone capable of maximizing payload capacity. Using MATLAB for both analytical calculations and finite element analysis, the project integrates computational tools commonly used in industry to evaluate performance and predict structural behavior. Through this process, students explore authentic engineering tradeoffs, such as balancing weight, strength, and efficiency, to arrive at an optimized and realistic design solution.

### Suggested Steps
Open the "DroneDesign_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.
1. Gather your starter assumptions so you can plug in numbers later.
    - Consider a quadcopter drone (4 motors) with a max takeoff weight of 2kg (including the payload)
    - Each motor can provide up to 1kg thrust
    - Arm length (you choose)
    - Material (you choose e.g. aluminum or carbon, look up typical material properties)
    - Acceleration due to gravity: $g = 9.81 m/s^2$
2. Assume each arm of the drone is modeled as a beam or truss element. Using simplified geometry, propose 1-2 designs that will minimize weight but maximize payload capacity.
3. Calculate the maximum payload capacity.
    - First, calculate the net upward force available from motors
    - Next, calculate the estimated frame weight from material and geometry
    - Finally, calculate max payload capacity while maintaining equilibrium
4. Use MATLAB to simulate force distribution and moments (*optional*: perform a finite element analysis by first creating your drone design in a CAD tool and importing the .stl file into MATLAB)
    - Plot shear/moment diagrams for drone arms
    - Calculate center of mass to ensure stable flight
5. Create a simple animation or visualization showing drone geometry and payload lift

### Expected Results for Project Solution
1. Sketches of proposed designs
2. Numerical value for maximum payload capacity estimated for each design
3. Shear/moment diagrams for drone arms and center of mass for different force distributions and moments simulated
4. Animation or visualization of drone geometry and payload lift

### Optional Extensions (advanced)
- Optimize the structure (e.g. arm thickness) using MATLAB's Optimization Toolbox to maximize payload given material constraints
- Simulate a dropped payload and resulting shift in center of mass
- Use Simulink and Simscape for dynamic simulation under lifting conditions

### Learning Outcomes
- Apply statics concepts (equilibrium, free‑body diagrams, trusses, and moments) to a real engineering system.
- Analyze structural loads, material choices and design tradeoffs with MATLAB-based computation of forces, moments, and center-of-mass positions.
- Evaluate structual design concepts through simulation, with an emphasis on understanding how payload placement and structural design influence drone stability and performance.

## Suggested Background Material
### 1. Statics and Mechanics
- Vector forces, components, and equilibrium
- Free-body diagrams
- Moments and bending
- Trusses and simple structural elements
- Center of mass and stability
### 2. Drone/Flight Basics
- Thrust generation and lift limits
- Relationship between frame geometry and stability
### 3. MATLAB Fundamentals
- Basic scripting and function creation
- Plotting (force diagrams, moment diagrams, geometry visualization)
- Solving systems of equations for equilibrium
- Using MATLAB for structural calculations (arrays, matrix operations)
### 4. Optional
- Optimization Toolbox basics for design optimization
- Simscape/Simulink fundamentals for dynamic modeling
- Finite element analysis in MATLAB
- CAD tools for drone design (e.g. Onshape)

## MathWorks Tutorials
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Numerical Methods](https://matlabacademy.mathworks.com/details/calculations-with-vectors-and-matrices/otmlcvm)
- (For optional advanced extension) [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim)
- (For optional advanced extension) [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink) and [Simscape Onramp](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape)
- (Optional) [Example Quadcopter Drone Model in Simscape](https://www.mathworks.com/help/sps/ug/quadcopter-drone.html)
- (Optional) [Introduction to Finite Element Analysis in MATLAB](https://matlabacademy.mathworks.com/details/introduction-to-finite-element-analysis-with-matlab/otmlfea)

## Project Difficulty
- Intermediate
    - Community college transfer students
    - 2nd year undergraduate or above 
