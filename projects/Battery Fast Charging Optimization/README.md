Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Battery%20Fast%20Charging%20Optimization&tfa_2=256)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Battery%20Fast%20Charging%20Optimization&tfa_2=256)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/FastChargerSPM.png"  width=500 /></td>
<td><p><h1>Battery Fast Charging Optimization</h1></p>
<p>Optimize lithium-ion battery charging strategies while preserving longevity and safety.</p>
</table>

## Motivation

Fast charging is a key enabler for the large-scale adoption of electric vehicles and high-performance portable electronics. However, aggressive charging protocols can lead to overheating, battery degradation, and safety risks. Traditional methods such as constant current–constant voltage (CC–CV) offer reliability but are often conservative in terms of charging speed. This project empowers students to explore structured fast-charging strategies and understand the trade-offs between speed, safety, and battery health, using model-based simulation tools.

## Project Description

Use the [Single Particle Model (SPM)](https://www.mathworks.com/help/simscape-battery/ref/batterysingleparticle.html) in [Simscape™ Battery™](https://www.mathworks.com/help/simscape-battery/index.html) to simulate and compare battery charging strategies. The SPM simplifies the full electrochemical model by representing the electrodes as single particles with diffusion dynamics. 
Start by simulating a standard constant current–constant voltage (CC–CV) method using a built-in controller, and then define alternative multi-stage charging profiles. By adjusting charging current levels and switching conditions, evaluate how different strategies affect charging time, voltage compliance, and temperature rise. The project emphasizes hands-on modeling, analysis, and design of safe and efficient charging protocols.
Optionally explore advanced optimization techniques to develop high-performance charging strategies under electrochemical and thermal constraints.

**Suggested Steps:**
1. Familiarize with the SPM Battery Model
    -	Study the theory behind the [Battery Single Particle Model (SPM)](https://www.mathworks.com/help/simscape-battery/ref/batterysingleparticle.html) block in Simscape Battery and how it simplifies complex electrochemical equations. Identify key parameters: solid-phase concentration, electrolyte concentration, and thermal effects.</br>
Note: A more rigorous method to evaluate lithium plating risk is to compare the electric potentials at the solid and liquid phases at the anode/separator interface. When the potential difference approaches zero, metallic lithium plating becomes more favorable. However, to reduce modeling complexity with the SPM, we use lithium-ion concentrations as a practical substitute for estimating plating risk.
2. Set Up the Battery Simulation
    -	Use the SPM block and configure key parameters such as nominal capacity, initial state of charge (SOC), cutoff voltage, and thermal properties (if modeling heat).
    -	Explore model inputs (charging current) and outputs (SOC, voltage, temperature).
3. Simulate Baseline CC–CV Charging
    -	Use the [Battery CC–CV](https://www.mathworks.com/help/simscape-battery/ref/batterycccv.html) controller block to implement the standard charging method as reference. 
    -	Simulate the CC–CV process and record metrics such as:Total charging time, Maximum temperature (if thermal modeling is enabled), Final SOC and terminal voltage behavior.
4. Design and Simulate Multi-Stage Charging Profiles
    -	Create custom fast-charging strategies using step functions, lookup tables, or Signal Builder blocks. 
    -	Profiles may include 2–4 constant current stages (e.g., high current → medium → low → taper).
    -	Define transitions based on time or SOC thresholds.
    -	Run simulations for each profile and document performance.
5. Analyze and Compare Results
    -	For each charging profile, collect:Charging duration, Maximum voltage and temperature, and Final SOC.
    -	Compare performance visually and numerically against the CC–CV baseline.
    -	Recommend profiles that offer faster charging while staying within safety limits.

**Advanced Project Work (Optional)**
1. Optimization-Based Charging Profile Design
    -	Formulate the charging task as a constrained optimal control problem using advanced methods such as Pseudo-spectral optimization, Direct collocation, or Multiple shooting.
    -	Define objective functions (e.g., minimum charging time) with constraints on voltage, temperature, and lithium plating indicators (e.g., solid-phase concentration).
2. Thermal Model Integration
    -	Extend the battery model with a two-state thermal system (core and surface temperatures).
    -	Model heat accumulation and apply thermal limits to prevent overheating during fast charging.
3. Electrochemical–Thermal Coupled Modeling
    -	Integrate thermal feedback into the electrochemical model.
    -	Observe how temperature affects lithium diffusion, resistance, and safety margins under high-current profiles.
4. Battery Parameter Fitting and Data Validation
    -	Customize the SPM model to reflect real-world battery characteristics.
      -	Tailor model parameters using dataset such as [Battery Archive](https://www.batteryarchive.org/), [Volta Foundation Data Repository](https://www.volta.foundation/)
    -	Estimate parameters such as: Capacity (from constant current discharge), OCV–SOC curves (from pulse tests), Resistance/diffusion (from EIS).
    -	Validate simulation behavior against published charge-discharge profiles or experimental benchmarks.
5. Degradation and State-of-Health (SOH) Analysis
    -	Integrate a simple SOH or aging model into the battery simulation.
    -	Analyze how fast charging impacts capacity fade, resistance growth, or lithium plating risk over multiple cycles.
6. Adaptive and Learning-Based Charging Strategies
    -	Implement feedback-based charging using PI or [Model Predictive Control (MPC)]( https://www.mathworks.com/help/mpc/ref/mpccontroller.html).
    -	Explore [reinforcement learning](https://www.mathworks.com/products/reinforcement-learning.html) for adaptive charging policy development using simulated reward structures.

## Background Material
- [Simscape Battery](https://www.mathworks.com/products/simscape-battery.html)
- [Battery Pack Modeling](https://matlabacademy.mathworks.com/details/battery-pack-modeling/otslbpm)
- [Battery Systems courseware](https://github.com/MathWorks-Teaching-Resources/Battery-Systems)
- [Battery Fast Charge with Simscape Battery](https://www.mathworks.com/company/technical-articles/generating-safe-fast-charge-profiles-for-ev-batteries.html)
- [Battery Single Particle Model](https://www.mathworks.com/help/simscape-battery/ref/batterysingleparticle.html)
- [Battery Charging and Discharging](https://www.mathworks.com/help/simscape-battery/ug/battery-constant-current-constant-voltage.html)
- [Battery Charging and Discharging Webinar](https://www.mathworks.com/videos/simscape-battery-essentials-part-6-battery-charging-and-discharging-1663756212085.html)
- [Perform Grouped Estimation of Model Parameters for Single-Particle Battery Model](https://www.mathworks.com/help/sldo/ug/perform-grouped-estimation-of-model-parameters-for-single-particle-battery-model.html)
- [A Public Battery Data Repository - Volta Foundation](https://volta.foundation/battery-bits/introducing-batteryarchive-org-a-public-battery-data-repository)
- [Battery Archive](batteryarchive.org)
- [Open Source Battery Data](https://github.com/lappemic/open-source-battery-data)
- [BatteryML](https://github.com/microsoft/BatteryML/tree/main)
- [Signal Processing Onramp](https://matlabacademy.mathworks.com/details/signal-processing-onramp/signalprocessing)
- [Signal Processing Courses](https://matlabacademy.mathworks.com/?page=1&fq=signal-processing&sort=featured)
- [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim)
- [Reinforcement Learning Onramp](https://matlabacademy.mathworks.com/details/reinforcement-learning-onramp/reinforcementlearning)

Suggested Reading:
	
[1]    H. E. Perez, S. Dey, X. Hu and S. J. Moura, “Optimal Charging of Li-Ion Batteries via a Single Particle Model with Electrolyte and Thermal Dynamics“ 2017 J. Electrochem. ([pdf](https://ecal.studentorg.berkeley.edu/pubs/ACC16-SPMeT-FastChg.pdf))
 
[2]    Chen, G.; Liu, Z.; Su, H. An Optimal Fast-Charging Strategy for Lithium-Ion Batteries via an Electrochemical–Thermal Model with Intercalation-Induced Stresses and Film Growth. Energies 2020, 13, 2388. https://doi.org/10.3390/en13092388

## Impact

Improve battery charging performance while preserving safety and longevity.

## Expertise Gained 

Sustainability and Renewable Energy, Modeling and Simulation, Optimization, Electrification

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/129) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

256
