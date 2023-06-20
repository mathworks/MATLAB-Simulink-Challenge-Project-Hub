**Project 45:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the rewards

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/mimo.png"  width=400 /></td>
<td><p><h1>MIMO Engine Airpath Control</h1></p>
<p>Internal combustion engines will continue to be used in the automotive marketplace well into the future. Build a MIMO airflow control to improve, engine performances, fuel economy, and emissions, and start your career in the automotive industry!</p>
</table>

## Motivation

Internal combustion engines will continue to be used in the automotive marketplace well into the future.
However, engine performance, fuel economy, and emissions must continually be improved to keep them viable relative to more expensive full electric power sources.
For example, modern gasoline and diesel engines use direct fuel injection which can result in particulate matter emissions at low engine loads with particles small 
enough to enter the human bloodstream directly through the lungs, so control of particulates is a major area of focus in diesel and gasoline engine control design today.
Transient air-fuel ratio control is critical to the particulate matter problem.

## Project Description

The ability to both estimate and control the airflow into the engine is at least half of the Air-Fuel Ratio (AFR) control problem that is so important to good engine performance, fuel economy, and emissions.
Since multiple actuators , e.g. throttle, wastegate, cam-phasers, Gas Re-circulation (EGR), affect the airflow into the engine, multi-input/multi-output control (MIMO) of engine airflow is an attractive way to improve engine airflow control and estimation performance that has yet to be implemented fully in the marketplace.  General Motors is the first company known to implement a MIMO control approach in low-cost production ECU hardware using Model-Predictive Control (https://www.sae.org/publications/technical-papers/content/2018-01-0875).

Suggested steps: 

1.	Replace the existing schedule-based non-MIMO engine air system controls within the Powertrain Blockset Spark-Ignition (SI) and Compression-Ignition (CI)  Engine Controller subsystems in the MathWorks Powertrain Blockset Conventional Vehicle Reference Application with a MIMO control approach similar to but more generic than that implemented by GM.
2.	Calculate and present ability to arrive at pre-determined EGR flow and boost setpoints better than with the existing open-loop table-based controls during significant engine transients on USFTP75 and all shipping drive-cycles, resulting in better open-loop AFR control on the drive-cycle.
3.	Provide and present solution for reproduction of results and understanding of designed approach.

After designing and testing the proposed MIMO controller you can provide:
-	A drop-in modification of the existing SI and CI engine control blocks in the Powertrain Blockset Conventional Vehicle Reference Example.  Model-Predictive Control is required using Model Predictive Control Toolbox.
-	A written review of simulation results showing significantly improved transient boost/EGR target control during transient operation in Simulation Data Inspector tool. 


## Background Material

- [Powertrain Blockset](https://www.mathworks.com/products/powertrain.html)

- [Model Predictive Control of Diesel Engine Airpath](https://www.mathworks.com/videos/model-predictive-control-of-diesel-engine-airpath-81995.html)

- [Model Predictive Control of Turbocharged Gasoline Engines for Mass Production (GM article)](https://www.sae.org/publications/technical-papers/content/2018-01-0875)

- [Robust Model Predictive Control of a Diesel Engine Airpath](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.457.5766&rep=rep1&type=pdf)

## Impact

Improve environmental friendliness of engine control by tier 1 automotive supplier.

## Expertise Gained

Autonomous Driving, Control, Modeling and Simulation

## Project Difficulty

Master’s, Doctoral level

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/10) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[pjmalo](https://github.com/pjmalo)

## Project Number

45
