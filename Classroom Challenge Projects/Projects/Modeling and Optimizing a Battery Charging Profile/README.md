<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/BatteryCharge.png"  width=500 /></td>
<td><p><h1>Modeling and Optimizing a Battery Charging Profile</h1></p>
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
2. MATLAB scripts that compute (as necessary) and plot as three subplots: voltage vs. time, current vs. time, and power vs. time
3. Analytical results (numerical values or derivatives), presented in a summary table
    - Numerical integration results showing total energy delivered during charging.
    - Time required to reach 80% and 100% charge.
    - Rate‑of‑change analysis (derivatives) at key intervals.
    - Estimates of resistive energy loss.
^KZ updated 05/12/26
___________________________________________________________________________
### Optional Extensions (advanced):
- Optimize charging time while keeping current within safety limits using MATLAB Optimization Toolbox.
- Introduce temperature effects or non-ideal behavior into the model.
- Compare Constant Current–Constant Voltage (CC-CV) charging with other methods using MATLAB scripts.

## Learning Outcomes
- Understand battery-charging dynamics through a first-order RC-circuit analog and exponential model.
- Apply calculus-based reasoning, including derivatives, numerical integration, and model fitting, to characterize charging behavior in a real engineered system. 
- Analyze efficiency, voltage rise, current behavior, and broader nonlinear system behavior using visualization. 

## Suggested Background Material
### 1. RC circuit fundamentals
  - Time constant
  - Exponential charge curves
  - Charging of a capacitor (analogous to battery charging).
### 2. Basic electric‑circuit theory
  - Voltage
  - Current
  - Power
  - Internal resistance
  - Energy transfer
### 3. Battery‑charging principles
  - CC‑CV charging
  - Nonlinear behavior
  - Efficiency and resistive losses.
### 4. Calculus applications
  - Derivatives for rate‑of‑change analysis
      -  [Calculus: Derivatives MATLAB Tutorial](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives)
  - Integrals for energy computation.
      - [Calculus: Integrals MATLAB Tutorial](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals) 
### 5. MATLAB Fundamentals
  - Basics of MATLAB scripting and function creation.
  - Plotting and data visualization (line plots, multiple axes, labels, annotations).
  - Curve fitting and working with provided datasets.
  - Numerical integration methods (`trapz`, symbolic integration optionally).
  - Generating and managing time‑based simulation data (`timeseries`, arrays).
  - (For optional advanced extension) MATLAB Optimization Toolbox fundamentals.

## MathWorks Tutorials
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Curve Fitting Onramp](https://matlabacademy.mathworks.com/details/curve-fitting-onramp/orcf)
- [Numerical Integration with MATLAB](https://www.mathworks.com/help/matlab/ref/integral.html)
- [Modeling RC Circuits in Simulink and Simscape](https://www.mathworks.com/help/simscape/ug/rc-circuit-in-simulink-and-simscape.html#d126e38731)
- [Battery Charging and Discharging Example in Simscape Battery](https://www.mathworks.com/help/simscape-battery/ug/battery-constant-current-constant-voltage.html)
    - [Simscape Battery Onramp](https://matlabacademy.mathworks.com/details/simscape-battery-onramp/orsb)
    - Data from this Simscape Battery example can be exported to the MATLAB workspace for curve fitting and analysis
- (For optional advanced extension) [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim)

## Project Difficulty
- Intermediate
    - Matriculating or 1st-year undegraduate student
    - 1st or 2nd year community college or transfer student     
