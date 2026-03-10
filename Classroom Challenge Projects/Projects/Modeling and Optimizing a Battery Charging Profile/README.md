<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/BatteryCharge.png"  width=500 /></td>
<td><p><h1>Modeling and Optimizing a Battery Charging Profile</h1></p>
<p>Use MATLAB to model a lithium battery-charging profile</p>
</table>

## Motivation
Understanding battery charging is essential in the age of electric vehicles, drones, and consumer electronics. A battery’s charging curve involves non-linear changes in current and voltage over time. This project provides an opportunity to apply knowledge of electric circuits, energy transfer, and integral calculus to model charging behavior, evaluate efficiency, and explore safe design practices for charging systems.

## Project Description
Use MATLAB to model a battery charging profile. Students will fit real or provided lithium‑ion battery data in MATLAB, compute energy transfer through numerical integration, and analyze key performance characteristics such as charge‑rate behavior and efficiency losses. 

### Suggested Steps:
Open the "BatteryCharging_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project.
1. Given data for a lithium-ion battery (e.g., max voltage, charging current limit, charging time), use MATLAB to fit the equation 𝑉(𝑡) = 𝑉𝑚𝑎𝑥 ( 1 − 𝑒−𝑡/𝑅𝐶 ) to model battery voltage over time
    - Public battery datasets are available online (e.g. [NASA Li-ion Battery Aging Dataset](https://data.nasa.gov/dataset/li-ion-battery-aging-datasets))
    - Sample battery profiles are also available in MATLAB examples (see [MathWorks Tutorials](#mathworks-tutorials) resources below)
2. Compute total energy delivered to the battery using integration (area under power-time curve).
3. Analyze:
    - Rate of voltage change at different intervals (derivatives)
    - Time to reach 80% and 100% charge
    - Energy lost due to resistance
4. Simulate and plot:
    - Voltage vs. time
    - Current vs. time
    - Power vs. time

### Expected Results for Project Solution
1. A fitted charging‑curve model for a given lithium‑ion battery dataset.
2. MATLAB scripts/functions that compute and plot:
    - Voltage vs. time
    - Current vs. time
    - Power vs. time
3. Analytical results (numerical values or derivatives), presented in a summary table
    - Numerical integration results showing total energy delivered during charging.
    - Time required to reach 80% and 100% charge.
    - Rate‑of‑change analysis (derivatives) at key intervals.
    - Estimates of resistive energy loss.

### Optional Extensions (advanced):
- Optimize charging time while keeping current within safety limits using MATLAB Optimization Toolbox.
- Introduce temperature effects or non-ideal behavior into the model.
- Compare Constant Current–Constant Voltage (CC-CV) charging with other methods using MATLAB scripts.

## Learning Outcomes
- Understand battery-charing dynamics through RC-circuit analogs and exponential models.
- Apply calculus-based reasoning, including derivatives, numerical integration, and model fitting, to characterize charging behavior in a real engineered system. 
- Analyze efficiency, voltage rise, current behavior, and braoder nonlinear system behavior through MATLAB-support simulation and visualization. 

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
