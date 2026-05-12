<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/BatteryCharge.png"  width=500 /></td>
<td><p><h1>Modeling and Analyzing a Battery Charging Profile</h1></p>
<p>Use MATLAB to model a lithium battery-charging profile</p>
</table>

**THIS GITHUB REPO IS CURRENTLY BEING EDITED 05/12/26**

## Motivation
Understanding battery charging is essential in the age of electric vehicles, drones, and consumer electronics. A battery’s charging curve involves non-linear changes in current and voltage over time. This project provides an opportunity to apply knowledge of electric circuits, energy transfer, and calculus to model charging behavior, evaluate efficiency, and explore the design of safe charging systems.

## Project Description
Use MATLAB to model a battery charging profile. Students will fit real lithium‑ion battery data in MATLAB to model battery charging as a simple first-order RC system (like capacitor charging), compute energy transfer through numerical integration, and analyze key performance characteristics such as charge‑rate behavior and efficiency losses. 

### Suggested Steps:
Open the "BatteryCharging_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.
1. Given real time-series voltage data for a lithium-ion battery, use MATLAB Curve Fitting Toolbox to fit the equation $V(t) = V_{max}(1 - e^{-t/RC})$ and model the battery charging profile as a simple RC-circuit analog
    - Load MathWorks example lithium-ion battery cycling data by following the steps [here](https://www.mathworks.com/help/predmaint/ug/data-analysis-and-feature-extraction-for-battery-raw-cycling-data.html). The page also includes information about the dataset, how the data was recorded, and the battery's maximum voltage.
    - Follow the steps [here](https://www.mathworks.com/help/curvefit/fit.html) to fit the curve to the loaded data
    - Plot the data and the fitted curve on the same graph
    - Print goodness-of-fit statistics
2. To understand the charging policy, visualize the current, voltage, and power measurements for one charging cycle. Create three subplots, each for:
    - Voltage vs. time
    - Current vs. time
    - Power vs. time 
3. Analyze and compute:
    - Rate of voltage change at different intervals (derivatives)
    - Time to reach 80% and 100% charge
    - Energy lost due to resistance
    - Total energy delivered to the battery, using integration (area under power-time curve)

### Expected Results for Project Solution
1. A fitted charging‑curve model for a real lithium-ion battery dataset, including a graph of the data with the fitted curve and goodness-of-fit statistics
2. Plots for: voltage vs. time, current vs. time, and power vs. time
3. Analytical results (numerical values or derivatives), presented in a summary table
    - Numerical integration results showing total energy delivered during charging.
    - Time required to reach 80% and 100% charge.
    - Rate‑of‑change analysis (derivatives at key intervals).
    - Estimates of resistive energy loss.

### Optional Extensions (advanced):
- Optimize charging time while keeping current within safety limits using MATLAB Optimization Toolbox.
- Introduce temperature effects or non-ideal behavior into the model.
- Compare Constant Current–Constant Voltage (CC-CV) charging with other methods using MATLAB scripts.

## Learning Outcomes
- Understand battery-charging dynamics through a first-order RC-circuit analog and exponential model.
- Develop and evaluate a mathematical model of lithium-ion battery charging by fitting an exponential function to experimental data and assessing model accuracy using quantitative metrics and visual comparisons.
- Analyze and interpret time-series battery data to generate and explain voltage, current, and power behavior, including computing derived quantities such as energy, rates of change, and key charging milestones. 
- Apply and justify numerical and physical methods to estimate system performance (e.g., energy delivery and resistive losses)

## Suggested Background Material
### 1. RC circuit fundamentals
  - Time constant
  - Charging of a capacitor (analogous to battery charging)
  - Voltage, current, resistance (Ohm's law)
  - Energy transfer, power, Joule's heating formula
### 2. Calculus applications
  - Derivatives for rate‑of‑change analysis
      -  [Calculus: Derivatives MATLAB Tutorial](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives)
  - Integrals for energy computation
      - [Calculus: Integrals MATLAB Tutorial](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals) 
### 3. MATLAB Fundamentals
  - Plotting and data visualization (line plots, multiple axes, labels, annotations).
  - Curve fitting and working with provided datasets ([Curve Fitting Onramp](https://matlabacademy.mathworks.com/details/curve-fitting-onramp/orcf))
  - Numerical integration differentiation methods (`gradient` and `trapz`).
### 4. Battery charging basics
  - Battery charging can approximated with an exponential model
  - Electrical energy flows into batteries as power and accumulates over time
  - Internal resistance reduces efficiency by causing votlage drop, dissipating energy as heat
  - Rate of change of voltage is dynamic during charging

### For optional extension: Battery‑charging principles
  - CC‑CV charging
  - Nonlinear behavior
  - Efficiency and resistive losses.

## MathWorks Tutorials and Helpful Resources
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Curve Fitting Onramp](https://matlabacademy.mathworks.com/details/curve-fitting-onramp/orcf)
- [Example MathWorks Lithium Ion Battery Data](https://www.mathworks.com/help/predmaint/ug/data-analysis-and-feature-extraction-for-battery-raw-cycling-data.html)
- [Curve Fitting Workflow](https://www.mathworks.com/help/curvefit/fit.html)
- [Numerical Integration and Differentiation with MATLAB](https://www.mathworks.com/help/matlab/numerical-integration-and-differentiation.html)
*For optional extension*:
- [Modeling RC Circuits in Simulink and Simscape](https://www.mathworks.com/help/simscape/ug/rc-circuit-in-simulink-and-simscape.html#d126e38731)
- [Battery Charging and Discharging Example in Simscape Battery](https://www.mathworks.com/help/simscape-battery/ug/battery-constant-current-constant-voltage.html)
- [Simscape Battery Onramp](https://matlabacademy.mathworks.com/details/simscape-battery-onramp/orsb)


## Project Difficulty
- *Without optional extension*: Beginner
    - High school senior
    - Matriculating or 1st-year undegraduate student
    - 1st or 2nd year community college or transfer student   
- *With optional extension*: Intermediate
    - 2nd year undergraduate student and above 
      
