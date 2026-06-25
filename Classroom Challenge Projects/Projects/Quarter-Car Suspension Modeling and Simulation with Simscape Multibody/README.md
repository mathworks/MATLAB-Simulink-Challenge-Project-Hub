<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/suspension.png"  width=500 /></td>
<td><p><h1>Quarter-Car Suspension Modeling and Simulation with Simscape Multibody</h1></p>
<p>Build and tune a Simscape Multibody quarter-car suspension model using an automated road test suite.</p>
</table>

## Motivation

Suspension tuning sits at the heart of vehicle ride comfort, safety, and durability—key concerns in automotive, commercial vehicles, robotics/mobility platforms, and supplier engineering teams. Engineers must make design tradeoffs: improving comfort can increase suspension motion, while improving road holding can transmit more vibration to passengers. In industry, these decisions are increasingly made with **model-based design** workflows that enable rapid “what-if” studies, requirements testing, and data-driven tuning before physical prototypes exist.  

This project gives students hands-on experience with that workflow in a manageable scope: a **single vehicle corner** (quarter-car), evaluated with objective metrics across a repeatable set of road disturbances.

## Project Description

Develop a **quarter-car suspension model** using **Simscape Multibody** to represent the mechanical structure and motion of a vehicle corner (body corner + wheel assembly connected through suspension and tire compliance). Create a **test harness** that runs a small suite of road profiles and automatically computes objective metrics for comfort and road holding. Then tune the suspension parameters to meet constraints and improve performance across all road cases.

As a reference for how physical networks can be modeled in Simscape, you may use the Simscape example here:  

- [Mass-Spring-Damper in Simulink and Simscape](https://www.mathworks.com/help/simscape/ug/mass-spring-damper-in-simulink-and-simscape.html) 


### Suggested Steps:
Open the "QuarterCarSuspension_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project. The Live Script contains more detailed information for each of the suggested steps.

1. Start with a baseline quarter-car multibody model
   - Build two rigid bodies:
        - **Sprung mass** (vehicle body corner)
        - **Unsprung mass** (wheel assembly)
    - Connect them with:
        - Suspension spring + damper (parameterized)
        - Tire vertical compliance element (parameterized or fixed)
    - Provide a road displacement input (e.g., a vertically moving “road plate” or equivalent road excitation subsystem)

2. Create a road test suite (3–5 cases)
    - Implement a set of road displacement profiles such as:
        - **Speed bump** (smooth hump)
        - **Pothole** (smooth dip)
        - **Rough road** (band-limited noise)
        - (optional) **Washboards** (sinusoidal corrugation)
        - (optional) **Two bumps** (repeatability / transient recovery)
    - Deliverable: `roadSuite.m` (or `roadSuite.mat`) that produces named road inputs, plus a short note explaining how each profile was made.

3. Log signals and define objective metrics
    - Log at minimum:
        - Sprung-mass vertical acceleration
        - Suspension travel (relative displacement)
        - Tire deflection (relative wheel-to-road displacement) or normal-force proxy
    - Compute metrics per road case, such as:
        - **Comfort metric:** RMS sprung acceleration (and/or peak)
        - **Packaging metric:** max suspension travel
        - **Road-holding metric:** max tire deflection (or variability)
    - Deliverable: a function like:
        - `results = scoreSuspension(simout, roadName)`
        - returning a struct/table of metrics and a single “score”

4. Build an automated test runner (easy “difference maker”)
    - Create a script/function that:
        - Runs all road cases automatically
        - Logs results to a table
        - Outputs a clear **pass/fail** for each requirement
        - Generates a single summary figure (or a brief report)
    - Example deliverable: `runAllTests.m` → returns `summaryTable` and saves plots to `/results`
    - This makes your project notably more “industry-like” while staying low difficulty.

5. Tune suspension parameters
    - Tune at least:
        - Suspension spring stiffness `Ks`
        - Suspension damping `Cs`
    - Two tuning options:
        - **Option A — Parameter sweep (recommended for beginners)**
            - Sweep `Ks` and `Cs` across small ranges
            - Score each design across all road cases
            - Select a design that meets constraints and minimizes score      
        - **Option B — Lightweight optimization (recommended for intermediate-level users)**
            - Use a simple search (pattern search / constrained minimization / custom heuristic)
            - Minimize comfort subject to travel/deflection limits
    - Deliverable: chosen parameter values + justification using plots/tables.

6. Validate robustness with one simple variation
    - Pick one low-effort robustness test:
      - **Payload change:** increase sprung mass by +25% and rerun the suite
      - **Component tolerance:** apply ±10% variation to `Ks` and `Cs` for a small Monte Carlo set (e.g., 20 trials)
  - Deliverable: a robustness summary (worst-case metrics and pass rate).

### Expected Results for Project Solution
- A runnable `*.slx` model of the quarter-car corner using **Simscape Multibody**
- A MATLAB-based **automated test runner** that executes all road cases and computes metrics
- A tuning workflow (manual sweep or simple optimization) with before/after results
  
### Optional Project Extensions:
- Add a **“ride-quality grade” dashboard**:
    - Convert your metrics into letter grades (A/B/C/F) per test case
    - Show a compact dashboard plot (bar chart or table + sparklines)
- Add a “design comparison” mode:
  - Compare baseline vs tuned vs one alternative (e.g., comfort-focused vs handling-focused)
- **Advanced**: Add an extra tuning parameter (keep it simple), such as:
    - Tire stiffness `Kt` (within a range), or
    - A bump stop modeled as a nonlinear stiffness element
- **Advanced**: Introduce a basic frequency-domain view:
    - Estimate transmissibility (road-to-body acceleration) using FFT for the rough road case

## Learning Outcomes
- Understand and apply physics‑based suspension behavior through quarter‑car modeling and simulation, including sprung/unsprung mass dynamics, suspension elements, and tire compliance. 
- Evaluate performance metrics and perform suspension tuning using parameter sweeps to improve performance across road cases.
- Evaluate robustness of suspension performance under parameter variation (mass change, stiffness/damping tolerances).
- Apply a model‑based design workflow, including repeatable testing, metrics‑driven tuning, and before/after comparison.
  
## Suggested Background Material
### 1. Mass–Spring–Damper Fundamentals
- Free/forced vibration behavior
- Natural frequency, damping ratio, resonance concepts
- Equations of motion for 1‑DOF and 2‑DOF systems
- How stiffness and damping affect response amplitude and settling

### 2. Basic Vehicle Suspension Concepts
- Sprung vs. unsprung mass
- Role of suspension spring, damper, and tire stiffness
- Tradeoffs between ride comfort and road holding
- Interpretation of typical metrics (RMS acceleration, suspension travel, tire deflection)

### 3. MATLAB Fundamentals
- Working with scripts, functions, and `timeseries` data
- Generating signals (sine, filtered noise, half‑sine bumps)
- Basic plotting and data inspection

### 4. Simscape & Simscape Multibody Fundamentals
- Understanding physical network modeling
- Rigid bodies, joints, constraints, and frames
- Building simple mechanical subsystems (mass, spring, damper)
- Parameterizing components and logging simulation outputs
- Using `From Workspace`, `Signal Editor`, or custom road‑profile inputs
- Setting up simulation configurations for stable, fast runs

## MathWorks Tutorials
### Highly Recommended
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Simscape Onramp](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape)
- [Interactive Mass-Spring-Damper Tutorial](https://www.mathworks.com/matlabcentral/fileexchange/94585-mass-spring-damper-systems)
- [Technical Guide to Optimizing Vehicle Suspension Design Through System-Level Simulation](https://www.mathworks.com/company/technical-articles/optimizing-vehicle-suspension-design-through-system-level-simulation.html)
- [Video Tutorial on Analyzing the Ride Quality of a Car Suspension](https://www.youtube.com/watch?v=aEPcyBqubb8)
  
### Other Recommended Tutorials
- [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink)
- [Simscape Multibody Documentation](https://www.mathworks.com/help/sm/)
- [Simscape Physical Modeling Documentation](https://www.mathworks.com/help/simscape/)
- [Mass-Spring-Damper in Simulink and Simscape (reference example)](https://www.mathworks.com/help/simscape/ug/mass-spring-damper-in-simulink-and-simscape.html) 

## Project Difficulty
- Intermediate
    - Community college transfer students
    - 3rd year undergraduate or above 