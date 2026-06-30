%[text] # Quarter-Car Suspension Modeling and Simulation
%[text] In this project, you will use MATLAB and Simscape Multibody to build and tune a quarter-car suspension model using an automated road test suite. You'll first develop the model using Simscape Multibody to represent the mechanical structure and motion of a vehicle corner (body corner + wheel assembly connected through suspension and tire compliance). Then, you'll create a test suite in MATLAB of road profiles that automatically computes objective metrics for comfort and road holding. Finally, you'll tune the suspension parameters to meet constraints and improve performance across all road cases.
%[text] Use this Live Script as a template to get started on your project solution. You may include helper functions at the bottom of this document or as separate files. For a tutorial on how to use Live Scripts, check out this [video](https://www.youtube.com/watch?v=hUXTyPYRidM).
%[text] **Suggested Tasks**
%[text] 1. Build a baseline quarter-car multibody model in Simscape
%[text] 2. Create a road test suite of 3-5 road profiles
%[text] 3. Log signals and define objective metrics
%[text] 4. Build an automated test runner
%[text] 5. Tune suspension parameters
%[text] 6. Validate robustness with a simple variation \
%[text:tableOfContents]{"heading":"**Table of Contents**"}
%[text] 
%%
%[text] ## Break Down the Problem
%[text] In the space below, define the problem statement:
%[text] 
%[text] List the requirements, constraints, and success criteria for the project:
%[text] 
%[text] What is your proposed solution?
%[text] 
%[text] List the steps you will need to take to achieve your proposed solution:
%[text] 
%[text] What challenges do you face in the process of achieving the solution?
%%
%[text] ## Task 1: Build a baseline quarter-car multibody model
%[text] In Simscape Multibody,
%[text] Build two rigid bodies:
%[text] - Sprung mass (vehicle body corner)
%[text] - Unsprung mass (wheel assembly) \
%[text] Connect them with:
%[text] - Suspension spring + damper (parameterized)
%[text] - Tire vertical compliance element (parameterized or fixed) \
%[text] Provide a road displacement input (e.g., a vertically moving “road plate” or equivalent road excitation subsystem)
%[text] **Tip**: Keep geometry simple (vertical DOF-focused) so the model is stable and fast to simulate.
% Open Simulink to build your vehicle model in Simscape Multibody
% Optionally, provide code below to open your .slx model and run the
% simulation

open_system('your_vehicle_model.slx'); % open model
simOut = sim('your_vehicle_model.slx', 'ReturnWorkspaceOutputs', 'on') % run simulation and return results

%%
%[text] ## Task 2: Create a road test suite (3-5 cases)
%[text] Implement a set of road displacement profiles such as:
%[text] - Speed bump (smooth hump)
%[text] - Pothole (smooth dip)
%[text] - Rough road (band-limited noise)
%[text] - (optional) Washboards (sinusoidal corrugation)
%[text] - (optional) Two bumps (repeatability / transient recovery) \
%[text] Below are a few options for building the road suite (choose one approach or mix them):
%[text] **MATLAB-generated signals (recommended)**:
%[text] - Create each road profile as a `timeseries` or `[t, z]` array in `roadSuite.m`
%[text] - Examples: speed bump (half-sine hump over a fixed duration), pothole (negative half-sine dip), rough road (filtered noise using `randn` + a simple filter)
%[text] - Feed into the model using From Workspace (or Signal Editor) blocks. \
%[text] **Simulink blocks (no MATLAB scripting required):**
%[text] - speed bump / pothole: Signal Builder or Signal Editor with a hand-drawn profile
%[text] - washboard: Sine Wave block
%[text] - two bumps: Pulse Generator (smoothed with a filter) or concatenated segments in Signal Editor
%[text] - rough road: Band-Limited White Noise block (optionally followed by a Transfer Fcn / Discrete Filter block to shape the spectrum) \
%[text] **Data-driven (optional)**:
%[text] - Import a recorded profile from CSV (e.g., `readtable`) and feed it via From Workspace.
%[text] - Deliverable: `roadSuite.m` (or `roadSuite.mat`) that produces named road inputs, plus a short note explaining how each profile was made. \
% Insert your code here (or make use of helper functions or additional .m or .mlx files and indicate where
% they can be found). Ensure your code is well-documented.


%%
%[text] ## Task 3: Log signals and define objective metrics
%[text] Log at minimum:
%[text] - Sprung-mass vertical acceleration
%[text] - Suspension travel (relative displacement)
%[text] - Tire deflection (relative wheel-to-road displacement) or normal-force proxy \
%[text] Compute metrics per road case, such as:
%[text] - Comfort metric: RMS sprung acceleration (and/or peak)
%[text] - Packaging metric: max suspension travel
%[text] - Road-holding metric: max tire deflection (or variability) \
%[text] Deliverable: a function like:
%[text] - `results = scoreSuspension(simout, roadName)`
%[text] - returning a struct/table of metrics and a single “score” \
% Insert your code here (or make use of helper functions or additional .m or .mlx files and indicate where
% they can be found). Ensure your code is well-documented.

function results = scoreSuspension(simout, roadName)
    % Write your function here
end
%%
%[text] ## Task 4: Build an automated test runner
%[text] Create a script/function that:
%[text] - Runs all road cases automatically
%[text] - Logs results to a table
%[text] - Outputs a clear pass/fail for each requirement
%[text] - Generates a single summary figure (or a brief report) \
%[text] Example deliverable: `runAllTests.m` → returns `summaryTable` and saves plots to `/results`
% Here, it is recommended to create a separate runAllTests.m file
% (or include as a local helper function) that combines the work you've done 
% so far here and additionally performs the steps outlined in the task description. 
% You can run it from here.

%%
%[text] ## Task 5: Tune suspension parameters
%[text] Tune at least:
%[text] - Suspension spring stiffness `Ks`
%[text] - Suspension damping `Cs` \
%[text] Two tuning options:
%[text] **Option A — Parameter sweep** (recommended for beginners)
%[text] - Sweep `Ks` and `Cs` across small ranges
%[text] - Score each design across all road cases
%[text] - Select a design that meets constraints and minimizes score \
%[text] You can implement the parameter sweep in MATLAB using `Simulink.SimulationInput` objects to programmatically create simulation runs with different values of suspension stiffness (Ks) and damping (Cs) without modifying the model manually. 
%[text] Implement the parameter sweep in MATLAB for each design point, configure the parameter values in a `SimulationInput` object, execute the sweep using [`parsim`](https://www.mathworks.com/help/simulink/slref/parsim.html) (see here for more information on Running Parallel Simulation) when Parallel Computing Toolbox is available, or `sim` as a serial fallback.
%[text] To reduce repeated runtime, use [Fast Restart](https://www.mathworks.com/help/simulink/ug/fast-restart-workflow.html) for interactive scripted simulations, and optionally [Rapid Accelerator](https://www.mathworks.com/help/simulink/ug/how-the-acceleration-modes-work.html) for faster batch execution of the design space.
%[text] **Option B — Lightweight optimization** (recommended for intermediate-level users)
%[text] - Use a simple search (pattern search / constrained minimization / custom heuristic)
%[text] - Minimize comfort subject to travel/deflection limits \
%[text] Deliverable: chosen parameter values + justification using plots/tables.
% Insert your code here that will output the optimal values for suspension
% spring stiffness (Ks) and suspension damping (Cs) based on your
% simulation. Your output should also include plots/tables that justify the
% optimal parameter values.


%%
%[text] ## Task 6: Validate robustness with one simple variation
%[text] Pick one low-effort robustness test:
%[text] - Payload change: increase sprung mass by +25% and rerun the suite
%[text] - Component tolerance: apply ±10% variation to `Ks` and `Cs` for a small Monte Carlo set (e.g., 20 trials) \
%[text] Deliverable: a robustness summary (worst-case metrics and pass rate).
% Insert code here to change the parameters as suggested and rerun your
% test suite. Your code should return a robustness summary that includes
% worst-case metrics and pass rate.


%%
%[text] ## Interpretation of Results
%[text] Summarize your findings by interpreting their physical/engineering meaning:
%[text] 
%[text] What are some limitations of your work?
%[text] 
%[text] What are practical next steps?
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":27.6}
%---
