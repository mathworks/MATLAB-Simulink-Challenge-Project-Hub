<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/QuadcopterDrone.jpg"  width=500 /></td>
<td><p><h1>Drone Payload Capacity and Structural Design Analysis</h1></p>
<p>Test different drone arm designs and materials to maximize payload capacity while maintaining structural integrity by performing thrust-to-weight analysis and finite element analysis in MATLAB.</p>
</table>

## Motivation
As drone use becomes increasingly common, such as in aerial photography, infrastructure inspection, and package delivery, there is a critical need to design lightweight structures that can safely support increasing payload demands. This project focuses on the engineering challenge of optimizing drone arm geometry and material selection to maximize payload capacity while ensuring structural integrity under motor-induced loads. By applying thrust-to-weight analysis alongside finite element modeling, the work reflects industry practices used to design reliable, high-performance components in commercial drones, aircraft structures, and automotive systems.

## Project Description
This project challenges students to apply core principles from physics and engineering, such as force balance, material properties, and structural analysis, to the real-world problem of designing a quadcopter drone capable of maximizing payload capacity. 

First, you will propose at least two drone arm designs. Using the provided material properties, the weight of other drone components, and a minimum payload requirement, you will use MATLAB to perform thrust-to-weight analysis across your designs to ensure safety margins and maximize payload capacity. You will then create a 3D model of one design using a CAD software of your choice, import it into MATLAB, and perform finite element analysis to evaluate deformation and stress under motor thrust and component weight, conducting a parameter sweep of material properties to identify the material that provides the highest structural integrity. As an optional extension, you will also minimize the total material cost of your design by incoporating the average cost of each material option.

Through this process, students explore authentic engineering tradeoffs, such as balancing weight, strength, and efficiency, to arrive at a design solution.

### Suggested Steps
Open the "DroneDesign_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.

1. Gather your starter assumptions and load the material properties into MATLAB.
   - Load the provided `droneArmMaterials.mat` file into MATLAB. This contains a data struct with the material properties for six different materials commonly used for drones. For each material, you have been provided the following information:
       - Density ($\rho$), in $kg/m^3$
       - Young's Modulus ($E$) in Pa
       - Poisson's ratio ($\nu$), unitless
       - Yield strength, in Pa
       - Average cost per meter in US dollars
   - For this project, you can assume the following design parameters:
       - Quadcopter drone with 4 motors and 4 propellers
       - Each motor can provide up to 1kg thrust
       - Acceleration due to gravity: $g = 9.81m/s^2$
       - Total weight of the drone components without the arms or the payload: 1kg
2. Develop at least two distinct drone arm designs by drawing clear, neatly labeled sketches that show key geometric features (overall shape, approximate dimensions, motor mount location, connection points to drone body). The two designs should be meaningfully different from each other (e.g. different geometries or structural strategies) and not just small variations of the same idea.
3. Perform a thrust-to-weight analysis across all design and material options to evaluate which drone arm design and which material optimizes payload capacity while meeting suggested safety requirements. Write a MATLAB function that will perform the necessary calculations for each design and material combination.
    - Your design must support a minimum payload of 0.5kg
    - Your design must meet a thrust-to-weight ratio of at least 2:1 to ensure safe and stable flight
    - Your goal is to maximize payload capacity (i.e. what is the heaviest payload your drone design could carry while still allowing the drone to safely take off?)
4. Perform finite element analysis (FEA) across all design and material options to evaluate the structural safety factor of your drone arm design. To simplify the task, you will perform the FEA only on a single drone arm. 
    - Using a CAD software of your choice, create a 3D model of one drone arm for each of your designs (CAD software options: Tinkercad, Onshape, Fusion 360, Solidworks). Be sure your model can be exported as a STEP or STL file for analysis in MATLAB.
    - Import your model into MATLAB and perform FEA. Apply two loads: upward thrust force from the motor and downward weight of the motor.
    - For each design and material combination, you should report the overall maximum displacement, maximum stress, and factor of safety and include visualizations of the x-, y-, and z-displacement and Von Mises stress.

Using the results of both the thrust-to-weight analysis and finite element analysis, propose a final design solution for the drone arm that maximizes payload capacity while meeting safe flight standards and maintaining structural integrity under load.
      
### Expected Results for Project Solution
1. At least two drone design sketches showing key geometric features
2. Results of thrust-to-weight analysis presented either in a summary table or plot
3. Results of finite element analysis
     - Numerical values presented in a summary table
     - Visualizations of x-, y-, and z-displacement and Von Mises stress
4. A final design recommendation justified using the results of your analyses

### Learning Outcomes
- Apply principles of force balance to model the relationship between thrust, weight, and payload capacity in a quadcopter system.
- Evaluate design–material combinations using thrust-to-weight ratio, displacement, stress, and factor of safety to determine whether designs meet flight and structural requirements.
- Develop a 3D CAD model of a drone arm and use MATLAB to perform computational analysis and finite element modeling of its structural behavior.

## Suggested Background Material
### 1. Statics and Mechanics
- Force balance, Newton's Second Law, weight vs. mass
- Moments and bending
- Qualitative understanding of stress and strain
- Relationship between force, deformation, and stiffness

### 2. Drone/Flight Basics
- Thrust and how propellers generate lift
- Thrust-to-weight ratio and its role in flight
- Payload capacity and system mass breakdown
- Basic quadcopter structure
- Safety factors in engineering design

### 3. Materials and Structural Behavior
- Density, Young's modulus (stiffness), yield strength and impacts on mass and performance
- Tradeoffs between strength and weight

### 4. CAD (Computer-Aided Design) Fundamentals
- Creating simple 3D geometries
- Representing dimensions and constraints
- Exporting models as STEP or STL files
- Understanding simplified vs realistic geometry 

### 5. MATLAB Fundamentals
- Basic matrix operations and variales
- Writing functions
- Looping and parameter sweeps (for design evaluation)
- Plotting and data visualization
- Finite Element Analysis in MATLAB (see below for tutorial and examples)

### 6. Finite Element Analysis in MATLAB
- What FEA is and why it's used
- Loads and boundary conditions (forces, constraints)
- Interpreting results (displacement and von Mises stress)
- Concept of factor of safety
- Understanding model assumptions (e.g. simplified geometry)

### 7. Engineering Design
- Iterative design process
- Tradeoffs between weight and strength, performance and cost (for optional extension)
- Using quantitative results to justify decisions
  
### Optional Extension
Extend your analysis by formulating and solving an optimization problem to minimize the total material cost of your drone arm. Using your parameter sweep results, identify designs that satisfy all performance constraints (payload requirement, thrust-to-weight ratio, and factor of safety), and determine which valid design achieves the lowest cost. Include the results of your cost optimization analysis in your final recommended design solution for the drone arm.

## MathWorks Tutorials and Helpful Resources
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Introduction to Finite Element Analysis in MATLAB](https://matlabacademy.mathworks.com/details/introduction-to-finite-element-analysis-with-matlab/otmlfea)
- [Partial Differential Equation Toolbox Documentation](https://www.mathworks.com/help/pde/index.html?s_tid=CRUX_lftnav)
- [Structural Mechanics Documentation](https://www.mathworks.com/help/pde/structural-mechanics.html)
- [Example Finite Element Analysis Workflow](https://www.mathworks.com/help/pde/ug/deflection-analysis-of-bracket-femodel.html)

## Project Difficulty
- Intermediate
    - Community college transfer students
    - 2nd year undergraduate or above 
