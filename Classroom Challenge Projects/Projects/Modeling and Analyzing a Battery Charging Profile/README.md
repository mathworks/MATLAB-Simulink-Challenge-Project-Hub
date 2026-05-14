<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/BatteryCharge.png"  width=500 /></td>
<td><p><h1>Modeling and Analyzing a Battery Charging Profile</h1></p>
<p>Use MATLAB to model a lithium battery-charging profile</p>
</table>

## Motivation
Understanding battery charging is essential in the age of electric vehicles, drones, and consumer electronics. A battery’s charging curve involves non-linear changes in current and voltage over time. This project provides an opportunity to apply knowledge of electric circuits, energy transfer, and calculus to model charging behavior, evaluate efficiency, and explore the design of safe charging systems.

## Project Description
Use MATLAB to model a battery charging profile. Students will fit real lithium‑ion battery data in MATLAB to model battery charging as a simple first-order RC system (as capacitor charging), compute energy transfer through numerical integration, and analyze key performance characteristics such as charge‑rate behavior and efficiency losses. 

### Suggested Steps:
Open the "BatteryCharging_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project. The Live Script contains more detailed information for each of the suggested steps.

1. Given real time-series voltage data for a lithium-ion battery, use MATLAB Curve Fitting Toolbox to fit the equation $V(t) = V_{max}(1 - e^{-t/RC})$ and model the battery charging profile as a simple RC-circuit analog. This is the equation used to describe capacitor charging, and capacitors are often used as simple battery models.
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

## Learning Outcomes
- Understand battery-charging dynamics through a first-order RC-circuit analog and exponential model, and evaluate model fit
- Analyze and interpret time-series battery data to generate and explain voltage, current, and power behavior
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

## Optional Extension (intermediate):
The lithium-ion battery from the example dataset follows a Constant Current-Constant Voltage (CC-CV) charging profile (standard for lithium ion batteries), where constant current is initially applied to rapidly increase voltage and then switches to constant voltage to safely complete the charge as current decreases.

As an optional extension of this project:
1. Utilize the data from one cycle. Identify the charging phases in the dataset and split the data into two regions: CC region (where voltage is increasing and current is approximately constant) and CV region (constant voltage, decreasing current). Clearly mark the transition points on plots. Optionally, confirm using rate of voltage change analysis (the derivative should be 0 at the start of the CV phase).
2. Analyze each phase separately. Fit the same exponential model as above to the CC phase and fit an exponential decay model to the plot of current vs. time during the CV phase.
3. Compare power vs. time during each phase and compute total energy delivered during each phase. Identify when charging is most efficient and when most energy is delivered.
4. CC-CV is one type of charging profile. Use Simscape Battery to model and compare different charging profiles (such as constant current, multi-stage/smart charging, or fast electric vehicle charging). Plot the simulation results (charging/discharing current, battery voltage, and battery temperature) for different charging profiles. This [example](https://www.mathworks.com/help/simscape-battery/ug/battery-constant-current-constant-voltage.html) shows how to simulate a CC-CV battery charging profile in Simscape, and shows the example plots of the simulation results. You can also use the [Battery Builder app](https://www.mathworks.com/help/simscape-battery/ref/batterybuilder-app.html) to export a custom battery object to Simulink for circuit modeling and analysis. 

## MathWorks Tutorials and Helpful Resources
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Curve Fitting Onramp](https://matlabacademy.mathworks.com/details/curve-fitting-onramp/orcf)
- [Example MathWorks Lithium Ion Battery Data](https://www.mathworks.com/help/predmaint/ug/data-analysis-and-feature-extraction-for-battery-raw-cycling-data.html)
- [Curve Fitting Workflow](https://www.mathworks.com/help/curvefit/fit.html)
- [Numerical Integration and Differentiation with MATLAB](https://www.mathworks.com/help/matlab/numerical-integration-and-differentiation.html)
  
*For optional extension*:
- [Simscape Battery Onramp](https://matlabacademy.mathworks.com/details/simscape-battery-onramp/orsb)
- [Battery Charging and Discharging Example in Simscape Battery](https://www.mathworks.com/help/simscape-battery/ug/battery-constant-current-constant-voltage.html)
- [Battery Charing and Discharing Example in Simscape Battery Video Tutorial](https://www.mathworks.com/videos/simscape-battery-essentials-part-6-battery-charging-and-discharging-1663756212085.html)
- [Battery Builder App](https://www.mathworks.com/help/simscape-battery/ref/batterybuilder-app.html)

## Project Difficulty
- *Without optional extension*: Beginner
    - High school senior
    - Matriculating or 1st-year undegraduate student
    - 1st or 2nd year community college 
- *With optional extension*: Intermediate
    - Community college transfer student
    - 2nd year undergraduate student and above 
      
