**Project 215:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/pneumaticSys.jpg"  width=500 /></td>
<td><p><h1>Digital Twin and Predictive Maintenance of Pneumatic Systems</h1></p>
<p>Predict faults in pneumatic systems using simulation and AI/machine learning.</p>
</table>

## Motivation

Pneumatic systems make use of compressed gas or pressurized air to create motion. They are widely used for different applications including processes like drilling, packing, assembly systems, and also in air brakes for heavy vehicles.  A typical pneumatic system consists of several mechanical, thermal, and electrical components like compressor, filter, regulator, lubricator, pipes, directional control valves, PLCs, plunger, actuators, and heat exchanger.  
This complex system can develop several kinds of faults over time, which are difficult to predict and diagnose. These include problems like air leakage, air choke, damaged filter, faulty valves, etc. All this can lead to production downtime and other business losses. Predictive Maintenance techniques using machine learning, provide promising possibilities to make data-driven decisions and take required maintenance, inventory planning, and repair actions in advance. However, training robust predictive maintenance algorithms requires a lot of sensor data that can effectively represent different scenarios of the system operation. Acquiring this data can be challenging and expensive in a real setting, especially data from faulty or degraded operations.
One promising solution to this problem is to generate synthetic training data from a system simulation, which can represent a variety of operating conditions and fault states. The simulation can even be tuned to a real system in operation as a Digital Twin, allowing for machine-specific predictions and various what-if scenarios.

## Project Description

Work with [Simscape™](https://www.mathworks.com/products/simscape.html) to develop a simulation model of a pneumatic system by parameterizing it for normal and faulty behaviors. Generate synthetic sensor data by running simulations under different conditions. The synthetic data should then be used to train predictive models using [Predictive Maintenance Toolbox™](https://www.mathworks.com/products/predictive-maintenance.html) and [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) for finding anomalous behavior, classifying fault type, and estimating remaining useful life. Finally, test the accuracy of predictive maintenance models on real data or unseen synthetic data. 
Suggested Steps: 
1. Do a literature survey of pneumatic systems being used for different applications, including the study of commonly occurring faults, component degradation, environmental conditions, and installed sensors that can help identify potential faults and anomalies.  
2. Develop a [Multiphysics model of a commonly used pneumatic system in any application setting, using Simscape™](https://www.mathworks.com/help/predmaint/ug/generate-and-use-simulated-data-ensemble.html)   including different mechanical, thermal, and electrical components. The model should be detailed enough to be able to incorporate commonly occurring faulty behaviors under different environmental conditions. 
3. Generate synthetic sensor data from the model representing different system behaviors showing the normal operation, continuous degradation, and faulty operation, based on the literature survey. Parallelize the simulations using [Parallel Computing Toolbox™](https://www.mathworks.com/products/parallel-computing.html). 
4. Develop predictive models using Statistics and Machine Learning Toolbox™ and Predictive Maintenance Toolbox™, from the synthetic data to:
            a.	Find anomalous behavior by applying different unsupervised machine learning techniques and compare 
                the results.  
            b.	Classify faults with supervised machine learning techniques
            c.	Estimate remaining useful life before failure occurs.  
5. Reflect upon the effectiveness and limitations of the proposed methodology. Also, comment on the utility of Simulation Methods and Digital Twins in Predictive Maintenance Applications.  

Project variations:

Create a Digital Twin by tuning the simulation model parameters based on real data using Simulink Design Optimization™. The simulated asset will now act as Digital Twin of the real system in operation, allowing for machine-specific predictions and various what-if scenarios.


Advanced project work: 
1. Find or measure real data to apply the predictive models and evaluate the results. You may refer to the dataset on [Air pressure system failures in Scania trucks](https://www.kaggle.com/uciml/aps-failure-at-scania-trucks-data-set). 
2. Prototype Operations Optimization in real time, by deploying the Predictive Maintenance algorithm and Simscape model on cyber-physical embedded devices and cloud services, using Industrial IoT workflow concepts. Use the following pointers for inspiration: 
     a. Generation of raw sensor signals: Use a real machine or, run the Simscape Model in real time on Speedgoat computer or Raspberry Pi to generate sensor data and send it to Raspberry Pi ‘Edge device’ 
     b. Feature Extraction on Edge device: Perform feature extraction from sensor data on the Raspberry Pi ‘Edge device’ and stream the feature data to Thingspeak Cloud based service
      c. Predictive Models running on cloud: Run your predictive models on Thingspeak to make predictions in real- 
         time about anomalous behavior, fault-type and remaining useful life.     


## Background Material

-	[What is Predictive Maintenance?]( https://www.mathworks.com/discovery/predictive-maintenance-matlab.html)
-	[Predictive Maintenance Toolbox](https://www.mathworks.com/products/predictive-maintenance.html)
-	[Predictive Maintenance Video Series](https://www.mathworks.com/videos/series/predictive-maintenance-tech-talk-series.html) 
-	[Simscape](https://www.mathworks.com/products/simscape.html) 
-	[Digital Twin](https://www.mathworks.com/discovery/digital-twin.html)
-	[Digital Twin for Industrial IoT]( https://www.mathworks.com/content/dam/mathworks/mathworks-dot-com/images/events/matlabexpo/online/2020/matlab-expo-2020-digital-twins-iiot.pdf)
-	[Simulink Design Optimization](https://www.mathworks.com/products/sl-design-optimization.html)
-	[Deploying Predictive Maintenance Algorithms to the Cloud and Edge](https://www.mathworks.com/company/newsletters/articles/deploying-predictive-maintenance-algorithms-to-the-cloud-and-edge.html)
-	[Predictive Maintenance of a Duct Fan Using ThingSpeak and MATLAB](https://www.mathworks.com/videos/predictive-maintenance-of-a-duct-fan-using-thingspeak-and-matlab-1542018024279.html)
-	[Parallel Computing Toolbox](https://www.mathworks.com/products/parallel-computing.html)

Suggested readings:
-	Wolfgang Gauchel*, Thilo Streichert, Yannick Wilhelm. 2020. Predictive Maintenance with a Minimum of Sensors using Pneumatic Clamps As An Example. 12th International Fluid Power Conference, Dresden
-	P. Aivaliotis, K. Georgoulias & G. Chryssolouris (2019) The use of Digital Twin for predictive maintenance in manufacturing, International Journal of Computer Integrated Manufacturing, 32:11, 1067-1080, DOI: 10.1080/0951192X.2019.1686173 
-	Aivaliotis, P., K. Georgoulias, Z. Arkouli, and S. Makris. 2019. “Methodology for Enabling Digital Twin Using Advanced Physics-based Modelling in Predictive Maintenance.” Procedia CIRP 81: 417–422. doi:10.1016/j.procir.2019.03.072.
-	Axel Eriksson (2010). Detecting Leakages in the Pneumatic System of Heavy Vehicles Modelling Using Simulink


## Impact

Improve efficiency and reliability of industrial processes 


## Expertise Gained 

Artificial Intelligence, Industry 4.0, Cyber-Physical Systems, Digital Twins, Embedded AI, Health Monitoring, IoT, Machine Learning, Modeling and Simulation


## Project Difficulty

Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/46) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[rohit4849](https://github.com/rohit4849)

## Project Number

215
