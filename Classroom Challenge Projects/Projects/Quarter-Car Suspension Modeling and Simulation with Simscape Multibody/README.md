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

As a reference for how physical networks can be modeled in Simscape (and compared to signal-based Simulink modeling), you may use the Simscape example here:  

- [Mass-Spring-Damper in Simulink and Simscape](https://www.mathworks.com/help/simscape/ug/mass-spring-damper-in-simulink-and-simscape.html) :contentReference[oaicite:0]{index=0}


Your solution must include:

- A runnable `*.slx` model of the quarter-car corner using **Simscape Multibody**
- A MATLAB-based **automated test runner** that executes all road cases and computes metrics
- A tuning workflow (manual sweep or simple optimization) with before/after results



### Suggested Steps:

#### 1. Start with a baseline quarter-car Multibody model

- Build two rigid bodies:
    - **Sprung mass** (vehicle body corner)
    - **Unsprung mass** (wheel assembly)
- Connect them with:
    - Suspension spring + damper (parameterized)
    - Tire vertical compliance element (parameterized or fixed)
- Provide a road displacement input (e.g., a vertically moving “road plate” or equivalent road excitation subsystem)

**Tip:** Keep geometry simple (vertical DOF-focused) so the model is stable and fast to simulate.

#### 2. Create a road test suite (3–5 cases)

Implement a set of road displacement profiles such as:

- **Speed bump** (smooth hump)
- **Pothole** (smooth dip)
- **Rough road** (band-limited noise)
- (optional) **Washboards** (sinusoidal corrugation)
- (optional) **Two bumps** (repeatability / transient recovery)

Below a few options for building the road suite (choose one approach or mix them):

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

Deliverable: `roadSuite.m` (or `roadSuite.mat`) that produces named road inputs, plus a short note explaining how each profile was made.

#### 3. Log signals and define objective metrics

Log at minimum:
- Sprung-mass vertical acceleration
- Suspension travel (relative displacement)
- Tire deflection (relative wheel-to-road displacement) or normal-force proxy

Compute metrics per road case, such as:

- **Comfort metric:** RMS sprung acceleration (and/or peak)
- **Packaging metric:** max suspension travel
- **Road-holding metric:** max tire deflection (or variability)

Deliverable: a function like:
- `results = scoreSuspension(simout, roadName)`
- returning a struct/table of metrics and a single “score”

#### 4. Build an automated test runner (easy “difference maker”)

Create a script/function that:

- Runs all road cases automatically
- Logs results to a table
- Outputs a clear **pass/fail** for each requirement
- Generates a single summary figure (or a brief report)

Example deliverable:
- `runAllTests.m` → returns `summaryTable` and saves plots to `/results`

This makes your project notably more “industry-like” while staying low difficulty.

#### 5. Tune suspension parameters

Tune at least:
- Suspension spring stiffness `Ks`
- Suspension damping `Cs`

Two tuning options:

**Option A — Parameter sweep (recommended for 1st year)**
- Sweep `Ks` and `Cs` across small ranges
- Score each design across all road cases
- Select a design that meets constraints and minimizes score

**Option B — Lightweight optimization (recommended for 2nd year)**
- Use a simple search (pattern search / constrained minimization / custom heuristic)
- Minimize comfort subject to travel/deflection limits

Deliverable: chosen parameter values + justification using plots/tables.

#### 6. Validate robustness with one simple variation

Pick one low-effort robustness test:

- **Payload change:** increase sprung mass by +25% and rerun the suite
- **Component tolerance:** apply ±10% variation to `Ks` and `Cs` for a small Monte Carlo set (e.g., 20 trials)

Deliverable: a robustness summary (worst-case metrics and pass rate).

#### Project Variation:

- Add a **“ride-quality grade” dashboard**:
    - Convert your metrics into letter grades (A/B/C/F) per test case
    - Show a compact dashboard plot (bar chart or table + sparklines)
- Add a “design comparison” mode:
  - Compare baseline vs tuned vs one alternative (e.g., comfort-focused vs handling-focused)

#### Advanced Project Work (Optional):

- Add an extra tuning parameter (keep it simple), such as:
    - Tire stiffness `Kt` (within a range), or
    - A bump stop modeled as a nonlinear stiffness element
- Introduce a basic frequency-domain view:
    - Estimate transmissibility (road-to-body acceleration) using FFT for the rough road case

## Background Material

- Simscape Multibody Documentation: https://www.mathworks.com/help/sm/
- Simscape Physical Modeling Documentation: https://www.mathworks.com/help/simscape/
- Mass-Spring-Damper in Simulink and Simscape (reference example): https://www.mathworks.com/help/simscape/ug/mass-spring-damper-in-simulink-and-simscape.html 

## Impact

Improve ride comfort and safer handling through virtual road testing

## Expertise Gained

Modeling and Simulation, Multibody Dynamics.

## Project Difficulty

Community College (1st–2nd year), intermediate (scalable via optional extensions).



