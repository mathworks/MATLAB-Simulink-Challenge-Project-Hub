<table>

<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/SolarPanel.png"  width=500 /></td>

<td><p><h1>Maximizing Solar Panel Output for a Fixed Area</h1></p>

<p>Use MATLAB to optimize the solar panel geometry to maximize solar irradiance and energy production.</p>

</table>


## Motivation
Industries ranging from renewable energy companies to civil and electrical engineering firms frequently optimize solar panel layouts to maximize power output, especially as solar technology expands across residential rooftops, commercial buildings, and large‑scale solar farms. In this project, students will practice skills widely used in industry, including numerical optimization, MATLAB programming, and design‑based decision-making. With solar installations becoming more widespread, these skills will help those in engineering roles design sustainable energy systems in constrained environments.

## Project Description

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=kathyz95/SolarPanel-ClassroomChallengeProject)

Use MATLAB to formulate and solve an optimization problem: Given a fixed area, determine the optimal tilt angle and aspect ratio of a solar panel to maximize the total energy output.

Solar panel efficiency depends on:
- The tilt angle with respect to the sun
- The shape (aspect ratio) of the panel
- The available area for installation

The goal is to apply numerical optimization techniques in MATLAB to find the best configuration that maximizes energy output under simplified assumptions. You have a total area of 2 square meters to place a solar panel. The panel can have any rectangular shape but must stay within this total area.

The total energy output (in simplified units) can be approximated as:

$$E(\theta, r) = A \cdot \eta(\theta) \cdot sunIntensity(\theta) \cdot f(r)$$

Where:
- **A = 2 m²** (fixed area)
- **θ ∈ [0°, 90°]** is the tilt angle (in degrees)
- **r** is the aspect ratio (length/width), with r ∈ [0.5, 4]
- **η(θ) = cos(θ − 30°)** (efficiency function)
- **sunIntensity(θ) = 1000 · cos(θ − 45°)** (sunlight variation with tilt)
- **f(r) = exp(−0.1 · (r − 1)²)** (efficiency drops for extreme shapes)

Your task: Find the optimal θ and r that maximize E(θ, r).

### Suggested Steps
1. Define the objective function in MATLAB: E = @(x)... where x(1)=theta, x(2)=r.
2. Use 'fmincon' to find the values of theta and r that maximize the energy output. (Hint: Minimize -E(x) instead.) Constrain the values: 0 ≤ θ ≤ π/2 and 0.5 ≤ r ≤ 4
3. Plot the objective function using 'fsurf' or a mesh plot to visualize E(θ, r). Print the optimal angle, ratio, and corresponding energy output.

### Expected Results for Project Solution

- Numerical value for **Optimal Tilt Angle** (e.g. 39.8 degrees)
- Numerical value for **Optimal Aspect Ratio** (e.g. 1.2)
- Numerical value for **Maximum Energy Output** (e.g. 1895.3 units)
- Visualization of E(θ, r) (a figure or plot)

## Learning Outcomes

- Formulate a real-world problem as a mathematical optimization problem
- Use MATLAB's `fmincon` for constrained nonlinear optimization
- Visualize and interpret multivariable objective functions

## Suggested Background Material

### 1. Basic Solar Energy Concepts
- How solar panels convert sunlight to electricity (photovoltaic effect)
- Factors affecting solar output: tilt, orientation, shading, and surface area
- Concept of solar irradiance and why it varies with angle

### 2. Trigonometry and Geometry
- Understanding angles in degrees/radians
- Cosine function and how it models directional effects
- Aspect ratio and area constraints for rectangles

### 3. Introduction to Optimization
- Difference between maximizing and minimizing an objective function
- Local vs. global optima (at a conceptual level)
- Using constraints in optimization problems

### 4. MATLAB Fundamentals
- Writing function handles (e.g., E = @(x) ...)
- Working with vectors and indexing (x(1), x(2))
- Plotting surfaces using `fsurf`, `mesh`, or `surf`
- Basics of `fmincon` (objective functions, bounds, options)

### 5. Numerical Modeling Skills
- Building simplified models of real systems
- Understanding how assumptions influence results
- Interpreting plots and optimization outputs

## MathWorks Tutorials
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Optimization Onramp](https://matlabacademy.mathworks.com/details/optimization-onramp/optim)
- [Optimization Workflow](https://www.mathworks.com/help/optim/ug/problem-based-workflow.html)

## Project Difficulty
Intermediate - matriculating or first-year undergraduate student, transfer student

## Project Number
101

