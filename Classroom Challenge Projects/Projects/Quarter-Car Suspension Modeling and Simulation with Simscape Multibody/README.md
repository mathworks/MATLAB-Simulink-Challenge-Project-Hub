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


Your solution must include:

- A runnable `*.slx` model of the quarter-car corner using **Simscape Multibody**
- A MATLAB-based **automated test runner** that executes all road cases and computes metrics
- A tuning workflow (manual sweep or simple optimization) with before/after results

### Suggested Steps:

1. Start with a baseline quarter-car multibody model
   - Build two rigid bodies:
        - **Sprung mass** (vehicle body corner)
        - **Unsprung mass** (wheel assembly)
    - Connect them with:
        - Suspension spring + damper (parameterized)
        - Tire vertical compliance element (parameterized or fixed)
    - Provide a road displacement input (e.g., a vertically moving “road plate” or equivalent road excitation subsystem)
    - **Tip:** Keep geometry simple (vertical DOF-focused) so the model is stable and fast to simulate.

2. Create a road test suite (3–5 cases)
    - Implement a set of road displacement profiles such as:
        - **Speed bump** (smooth hump)
        - **Pothole** (smooth dip)
        - **Rough road** (band-limited noise)
        - (optional) **Washboards** (sinusoidal corrugation)
        - (optional) **Two bumps** (repeatability / transient recovery)
    - Below are a few options for building the road suite (choose one approach or mix them):
        - MATLAB-generated signals (recommended):
            - Create each road profile as a `timeseries` or `[t, z]` array in `roadSuite.m`
            - Examples:
                - speed bump: half-sine hump over a fixed duration
                - pothole: negative half-sine dip
                - rough road: filtered noise using `randn` + a simple filter
            - Feed into the model using **From Workspace** (or **Signal Editor**) blocks.
    - Simulink blocks (no MATLAB scripting required):
        - speed bump / pothole: Signal Builder or Signal Editor with a hand-drawn profile
        - washboard: Sine Wave block
        - two bumps: Pulse Generator (smoothed with a filter) or concatenated segments in Signal Editor
        - rough road: Band-Limited White Noise block (optionally followed by a Transfer Fcn / Discrete Filter block to shape the spectrum)
    - Data-driven (optional):
        - Import a recorded profile from CSV (e.g., `readtable`) and feed it via From Workspace.
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
- A quarter-car suspension model built in Simscape Multibody
- A MATLAB function/script that runs 3-5 road test cases, logs reults to a table, outputs a clear pass/fail for each requirement and generates a brief summary figure or report
- A tuning workflow to determine optimal suspension spring stiffness (`Ks`) and suspension damping (`Cs`) that outputs the two optimal parameter values (as two numerical values) and an accompaniying plot/table that justifies the chosen optimal parameters
  
### Optional Project Variation:
- Add a **“ride-quality grade” dashboard**:
    - Convert your metrics into letter grades (A/B/C/F) per test case
    - Show a compact dashboard plot (bar chart or table + sparklines)
- Add a “design comparison” mode:
  - Compare baseline vs tuned vs one alternative (e.g., comfort-focused vs handling-focused)

### Optional Project Expansion (Advanced):
- Add an extra tuning parameter (keep it simple), such as:
    - Tire stiffness `Kt` (within a range), or
    - A bump stop modeled as a nonlinear stiffness element
- Introduce a basic frequency-domain view:
    - Estimate transmissibility (road-to-body acceleration) using FFT for the rough road case

## Learning Outcomes
- Build a physics‑based quarter‑car suspension model using Simscape Multibody, including sprung/unsprung masses, spring–damper suspension, and tire compliance.
- Create and run an automated road‑test harness capable of executing multiple road profiles and logging key dynamic signals.
- Compute objective performance metrics for ride comfort, road holding, and packaging (e.g., RMS acceleration, suspension travel, tire deflection).
- Perform suspension tuning using parameter sweeps to improve performance across road cases.
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
  
### Other Recommended Tutorials
- [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink)
- [Simscape Multibody Documentation](https://www.mathworks.com/help/sm/)
- [Simscape Physical Modeling Documentation](https://www.mathworks.com/help/simscape/)
- [Mass-Spring-Damper in Simulink and Simscape (reference example)](https://www.mathworks.com/help/simscape/ug/mass-spring-damper-in-simulink-and-simscape.html) 

## Project Difficulty
- Beginner: Matriculating or 1st-year undergraduate student



