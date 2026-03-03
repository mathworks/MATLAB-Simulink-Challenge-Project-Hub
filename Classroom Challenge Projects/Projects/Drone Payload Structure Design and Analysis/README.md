<table>
<td><img src="QuadcopterDrone.jpg"  width=500 /></td>
<td><p><h1>Drone Payload Structure Design and Analysis</h1></p>
<p>Design a lightweight but strong drone payload structure by applying core statics principles such as equilibrium, moments, trusses, and center‑of‑mass analysis.</p>
</table>

## Motivation
As drone delivery becomes increasingly common, there is a critical need to design lightweight but strong structural frames that can safely carry payloads without compromising stability or control. This project challenges students to apply concepts from Statics and Physics to optimize drone frame design using principles like force equilibrium, moments, trusses, and center of mass. The experience simulates real-world engineering
decisions around tradeoffs between weight, strength, and performance.

## Project Description
This project challenges students to design a lightweight but strong drone payload structure by applying core statics principles such as equilibrium, moments, trusses, and center‑of‑mass analysis. Using MATLAB simulation, students will estimate payload capacity, analyze structural loads on drone arms, and validate stability for safe flight. Through iterative design, they explore real engineering tradeoffs between strength, weight, and performance in modern drone applications.

### Suggested Steps
Open the "DroneDesign_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.
1. Gather your starter assumptions so you can plug in numbers later.
    - Consider a quadcopter drone (4 motors) with a max takeoff weight of 2kg (including the payload)
    - Each motor can provide up to 1kg thrust
    - Arm length (you choose)
    - Material (you choose e.g. alumnium or carbon, look up typical material properties)
    - Acceleration due to gravity: $g = 9.81 m/s^2$
2. Assume each arm of the drone is modeled as a beam or truss element. Using simplified geometry, propose 1-2 designs that will minimize weight but maximize payload capacity.
3. Calculate the maximum payload capacity.
    - First, calculate the net upward force available from motors
    - Next, calculuate the estimated frame weight from material and geometry
    - Finally, calculaute max payload capacity while maintaining equilibrium
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
- Estimate structural loads and evaluate design tradeoffs between strength and weight.
- Use MATLAB to compute forces, moments, and center‑of‑mass positions, and to generate structural diagrams.
- Validate and compare structural design concepts through simulation
- Understand how payload placement and structural design influence drone stability and performance.

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
    - Matriculating or 1st-year undegraduate student
    - 1st or 2nd year community college or transfer student    
