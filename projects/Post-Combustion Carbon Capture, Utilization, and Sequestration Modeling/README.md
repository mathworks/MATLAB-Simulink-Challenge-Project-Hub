Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Post-Combustion%20Carbon%20Capture,%20Utilization,%20and%20Sequestration%20Modeling&tfa_2=261)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Post-Combustion%20Carbon%20Capture,%20Utilization,%20and%20Sequestration%20Modeling&tfa_2=261)</strong>to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/carbon_capture.png"  width=500 /></td>
<td><p><h1>Post-Combustion Carbon Capture, Utilization, and Sequestration Modeling</h1></p>
<p>Design, cost, and optimize an MEA-based post-combustion CO₂ capture and compression plant by connecting CHEMCAD to MATLAB.</p>
</table>

## Motivation

CO2 contributes to climate change. In order to mitigate that, engineers and scientists explore various technologies to capture CO2. Post-combustion carbon capture aims to separate CO2 from flue gas generated from fossil fuel combustion in a coal-fired power plant. The captured CO2 can be directly utilized to produce other chemicals such as methane and methanol. The captured CO2 can also be compressed to a state of near supercritical liquid in preparation for transportation and permanent storage in deep geologic formation.

In this project, you will investigate the design of a post-combustion carbon capture, utilization, and sequestration plant and its optimization with MATLAB and CHEMCAD, a Datacor product. This project description is nominated by Dr. Yuhe Tian, West Virginia University from Chemical and Biomedical Engineering Department and assigned in CHE 355 Junior Design Course. The course is jointly supported by MathWorks engineers and Datacor engineers.


## Project Description

The goal of this project is to design and improve a post-combustion CO2 capture and compression process for a coal-fired power plant. You will start from a base-case process that uses monoethanolamine (MEA) to capture CO2 from flue gas and then compresses the captured CO2 for transportation, utilization, or storage.

You will use CHEMCAD to model and simulate the process and MATLAB to analyze and improve its performance and calculate costs. Using the connection between MATLAB and CHEMCAD, you will evaluate different operating conditions and process modifications, perform cost and uncertainty analyses, and optimize selected design parameters. The objective is to identify improvements that reduce cost and resource consumption while meeting the required CO2 purity and recovery specifications.

At the end of the project, you will compare the improved design with the base case using key performance metrics such as cost, energy consumption, raw material consumption, productivity, and carbon emissions, and benchmark the final design against results reported in the literature.

**Suggested Steps:**

1. Familiarize yourself with MATLAB and various toolboxes fitting to this project. Tools and resources are mapped to each step and task of this project description below. MATLAB can be used for cost calculations, uncertainty analysis using Monte Carlo Simulations, custom unit models and reaction kinetics calculations, and optimizations. The self-paced courses on [MATLAB Academy](https://matlabacademy.mathworks.com/?page=1&amp;sort=featured) (solving equations, optimization, machine learning &amp; AI, statistics and more) and the [MathWorks Videos](https://www.mathworks.com/videos/search.html?q=&amp;page=1) are a good starting point, and [MATLAB Copilot](https://www.mathworks.com/products/matlab-copilot.html) (AI assistance within MATLAB) or the browser-based [AI Chat Playground](https://www.mathworks.com/matlabcentral/playground/presets/assistant) in the MATLAB Central user community can help you while writing code. The suggested products for this project are:
    - [MATLAB](https://www.mathworks.com/products/matlab.html) for core programming, visualization and [Live Scripts](https://www.mathworks.com/help/matlab/matlab_prog/what-is-a-live-script-or-function.html)
    - [Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html) for design of experiments, regression, Gaussian process regression, lasso/ridge and surrogate modeling workflows
    - [Optimization Toolbox](https://www.mathworks.com/products/optimization.html) for `fmincon`, `lsqcurvefit`/`lsqnonlin` for fitting, and constrained optimization
    - [Global Optimization Toolbox](https://www.mathworks.com/products/global-optimization.html) for `surrogateopt`, `patternsearch` and `ga`/`particleswarm`, which are helpful for expensive or non-smooth flowsheet objectives
    - Optionally, [Simulink Design Optimization](https://www.mathworks.com/products/sl-design-optimization.html) for sensitivity analysis workflows for Simulink models and [SimBiology](https://www.mathworks.com/products/simbiology.html) for kinetics, parameter estimation and sensitivity/uncertainty analysis of ODE models
2. Familiarize yourself with [CHEMCAD](https://www.datacor.com/products/chemcad) to perform the process simulation in CHEMCAD.
3. To connect MATLAB with CHEMCAD, utilize [Industrial Communication Toolbox](https://www.mathworks.com/products/industrial-communication.html). CHEMCAD communicates with MATLAB using OPC-DA which is available up to MATLAB R2024b. Follow the instructions [here](https://mathworks-my.sharepoint.com/:b:/p/ahaciogl/IQBDsssvOvi3S7SRqKfvM5LBAXcb9rQOntsROEJ71XEI5pI?e=3j1qAQ) to connect MATLAB with CHEMCAD. The [MATLAB-CHEMCAD webinar](https://content.mathworks.com/viewer/68d6e690f464d10b562fcef7) by Dr. Yuhe Tian, MathWorks and Datacor engineers demonstrates how MATLAB and CHEMCAD work together for this type of project.


## Background Material

1. Turton, R., Shaeiwitz, J. A., Bhattacharyya, D., & Whiting, W. B. (2018). *Analysis, synthesis, and design of chemical processes* (5th ed.). Pearson Education.
2. Seader, J. D., Henley, E. J., & Roper, D. K. (2016). *Separation process principles with applications using process simulators* (4th ed.). John Wiley & Sons.



## Impact

Reduce climate impact of CO2 by carbon capture, storage and utilization in other chemicals manufacturing.

## Expertise Gained 

Sustainability and Renewable Energy, Modeling and Simulation, Optimization, Reaction kinetics

## Project Difficulty

Bachelor

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/190) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

261