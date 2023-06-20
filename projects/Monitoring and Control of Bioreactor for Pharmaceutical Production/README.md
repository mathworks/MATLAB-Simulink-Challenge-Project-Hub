**Project 188:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/bioreactor.jpg"  width=500 /></td>
<td><p><h1>Monitoring and Control of Bioreactor for Pharmaceutical Production</h1></p>
<p>Monitor and control an industrial scale bioreactor process for pharmaceutical production.</p>
</table>

## Motivation

In the era of industry 4.0, which envisions a highly intelligent data-driven manufacturing environment, the need for online monitoring and control is paramount. This is especially applicable to the COVID crisis where the pharma industry is being forced to scale up manufacturing of the vaccine very quickly.
The biopharmaceutical sector is still significantly lagging other sectors in their adoption of advanced process control, particularly in their use of innovative process analytical technology (PAT) solutions. A major push from industrial regulators to rectify this has been the implementation of the Quality by Design (QbD) and PAT initiatives set out by the FDA in 2004 and 2009, respectively. While regulatory initiatives have had an impact, the uptake has been slow. A major challenge is the expertise and confidence required to adopt and implement these novel control solutions throughout industrial biopharmaceutical processes.

## Project Description

The objective of this project is to ensure a predefined product quality target is consistently achieved for all batches regardless of inherent process disturbances and batch-to-batch fluctuations. This is demonstrated by applying the QbD methodology utilising the PAT framework to an industrial bioprocess with MATLAB® and Simulink®. 

Suggested Steps:

1.	Familiarize yourself with the industrial-scale penicillin fermentation simulator built in MATLAB, referred to as [IndPenSim](https://www.mathworks.com/matlabcentral/fileexchange/49041-industrial-scale-penicillin-simulationv2?s_tid=srchtitle). 
2.	Identify the critical process parameters (CPPs) and subsequent critical quality attributes (CQAs) influencing production using multivariate analysis. Use functions from the [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/help/stats/)
3.	Select an appropriate CPP and utilise the spectra recorded by the Raman spectroscopy device to develop a soft sensor enabling an on-line prediction of biomass, substrate or product concentration in real-time.
4.	Develop a control strategy that manipulates one or more of the following flowrates: substrate, nitrogen or phenylacetic acid, to maintain control variables within their acceptable ranges. Consider using the [Control System Toolbox™](https://www.mathworks.com/help/control/).
5.	Demonstrate benefits of this control strategy over baseline in terms of product yield increase.
	
Project variations:

1.	Create a digital twin of the process by calibrating the process model with the plant data. Estimate the parameters of the model using measured data in the parameter estimator using [Simulink® Design Optimization™](https://www.mathworks.com/help/sldo/).
2.	Improve the estimation of a CPP using a state-based filter (e.g. Kalman Filter, Extended Kalman Filter, Moving Horizon Estimator, etc.) this is helpful for process monitoring and control.
3.	Adopt a learning-based approach (machine/deep learning) to develop soft sensors.

Advanced project work:

1.	Develop an algorithm to detect the endpoint of reactions – the point at which the production of a batch should be terminated.
2.	Implement a fault detection strategy to detect the root cause of abnormal process behavior.
3.	Reduce fluctuation of variables such as pH and temperature by implementing different control strategies.


## Background Material

- [Industrial-scale penicillin fermentation simulator (code and dataset)](https://www.mathworks.com/matlabcentral/fileexchange/49041-industrial-scale-penicillin-simulationv2?s_tid=srchtitle).
- [PID Controller in Simulink](https://www.mathworks.com/help/simulink/slref/pidcontroller.html).

Suggested readings:

[1] [Stephen Goldrick, Andrei Ştefan, David Lovett, Gary Montague, Barry Lennox, The development of an industrial-scale fed-batch fermentation simulation, Journal of Biotechnology, 2015](https://www.researchgate.net/publication/267816104_The_development_of_an_industrial-scale_fed-batch_fermentation_simulation).

[2] [Stephen Goldrick, Carlos A. Duran-Villalobos, Karolis Jankauskas, David Lovett, Suzanne S. Farid, Barry Lennox,Modern day monitoring and control challenges outlined on an industrial-scale benchmark fermentation process, Computers & Chemical Engineering, 2019](https://www.sciencedirect.com/science/article/pii/S0098135418305106?via%3Dihub).


## Impact

Improve quality and consistency of pharmaceutical products and contribute to transitioning the pharmaceutical sector to Industry 4.0.


## Expertise Gained 

Big Data, Industry 4.0, Control, IoT, Modeling and Simulation, Optimization, Machine Learning


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/22) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[samvrao](<https://github.com/samvrao>)

## Project Number

188
