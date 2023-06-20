**Project 218:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/pmsm.jpg"  width=500 /></td>
<td><p><h1>Machine Learning for Motor Control</h1></p>
<p>Enhance the performance and product quality required to develop a motor control application.</p>
</table>

## Motivation

Motor control is one of the core skillsets in robotics and electrification areas which are becoming more and more widely used in the industry.  Currently, many industrial motor applications are driven by classical and robust control-based methods. These methods are also cost-effective to run on embedded systems. Conventional control approaches are effective when the system can be modelled predictably. It can be difficult to predict system nonlinearities due to motor parameter changes caused by aging and temperature variation. Therefore, implementing Machine Learning-based motor control methods may provide an alternate pathway to overcome the real-world challenges.

## Project Description

First, build a motor drive system based on conventional control approach using Simulink® and/or Simscape™. Then, introduce machine learning based models to certain blocks or parts of the system. Use [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) and/or [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) and/or [Reinforcement Learning Toolbox™](https://www.mathworks.com/products/reinforcement-learning.html) for the machine learning based models. For example, work with the [Motor Control Blockset™](https://www.mathworks.com/products/motor-control.html) product to automate the motor control system design using MATLAB® and Simulink® with the key characteristics being Electrical Systems and Controller. The machine learning based-models/parameters can be set up using [Deep Network Designer](https://www.mathworks.com/help/deeplearning/gs/get-started-with-deep-network-designer.html) and [Reinforcement Learning Designer](https://www.mathworks.com/help/reinforcement-learning/ug/design-dqn-using-rl-designer.html). Finally, develop and evaluate a workflow that demonstrates controller design and optimization using classical control theory and machine learning-based approaches. An example introducing reinforcement learning is laid out in the suggested steps.

Suggested steps:
1.	Use Surface Mount Permanent Magnet Synchronous Motor (PMSM) technologies.  
2.	Perform literature research prior to starting the work.  
3.	Use the [PMSM Field-Oriented Control (FOC) block](https://www.mathworks.com/help/physmod/sps/ref/pmsmfieldorientedcontrol.html) to implement a PI speed and current control cascade structure. 
4.	Run and check the reference speed and censored speed using [FOC Autotuner](https://www.mathworks.com/help/mcb/gs/tune-pi-controllers-using-foc-autotuner.html).
5.	Using Reinforcement Learning design apps, change the current control block as an agent model. Based on workflow, the PMSM and drive inverter are set as environment. Also, D-axis current, Q-axis current, and its errors can be determined as an observation. Determine the actions with D-axis and Q-axis voltages, then the reward signal to minimize the control effort from previous time step.
6.	To build policy, create network architecture such as action-critic networks using Deep Network Designer apps. For example, the agent is a twin-delayed deep deterministic policy gradient (TD3) agent. A TD3 agent approximates the long-term reward given the observations and actions using two critics. Run each training for at most 1000 episodes and stop training when the agent receives an average cumulative reward greater than -190 over 100 consecutive episodes. At this point, the agent can track the reference speeds. To validate the performance of the trained agent, simulate the model and view the closed-loop performance through the Speed Tracking Scope block. 
https://www.mathworks.com/help/reinforcement-learning/ug/train-td3-agent-for-pmsm-control.html

Project variations: 
1.	Try the other types of reference signals such as ramp or sine wave
2.	Insert the parameter errors to compare the classical control and machine learning-based approaches. For example, Rs_hat in Controller gain = 0.5 * Rs in motor model.

Advanced project work: 
1.	Accurate Torque Estimation of electrical machines based on hybrid machine learning approaches
2.	Estimation of Permanent Magnet temperature in rotor utilizing data-driven modeling and machine learning
3.	Design optimization of motor parameters using Deep Neural Network
4.	Predictive Maintenance of Electric Drive systems

## Background Material

Examples:
- [PMSM Control Examples](https://www.mathworks.com/help/mcb/pmsm.html)
-	[Train TD3 Agent for PMSM Control](https://www.mathworks.com/help/reinforcement-learning/ug/train-td3-agent-for-pmsm-control.html)
-	[PMSM Field Oriented Control Reinforcement Learning Example](https://www.mathworks.com/help/reinforcement-learning/ug/train-td3-agent-for-pmsm-control.html)

Suggested readings:
-	[1] Shuai Zhao, Frede Blaabjerg, Huai Wang. "An Overview of Artificial Intelligence Applications for Power Electronics." IEEE TRANSCTIONS ON POWER ELECTRONICS, VOL. 36, NO. 4, APRIL 2021. 
-	[2] Kano Matsura, Kan Akatsu, “A motor control method by using Machine learning,” 23rd international Conference on Electrical Machines and Systems (ICEMS), Nov. 2020, DOI: 10.23919/ICEMS50442.2020.9290989
-	[3] Wei-Lun Peng, Yung-Wen Lan, Shih-Gang Chen, Faa-Jeng Lin, Ray-I Chang, Jan-Ming Ho. "Reinforcement Learning Control for Six-Phase Permanent Magnet Synchronous Motor Position Servo Drive." 2020 3rd IEEE International Conference on Knowledge Innovation and Invention (ICKII), AUGUST 2020. 
-	[4] Soumava Bhattacharjee, Sukanta Halder, Aiswarya Balamurali, Muhammad Towhidi, Lakshmi Varaha Iyer, Narayan C. Kar. "An Advanced Policy Gradient Based Vector Control of PMSM for EV Application." 2020 10th International Electric Drives Production Conference (EDPC), DECEMBER 2020. 
-	[5] Wilhelm Kirchgassner, Oliver Wallcheid, “Estimating Electric Motor Temperatures with Deep Residual Machine Learning,” IEEE Transactions Power Electronics, vol. 36, pp. 7480-7488, Jul. 2021.
-	[6] Mikko Tahkola, Janne Keranen, Denis Sedov, Mehrnaz Farzam Far, Juha Kortelaine, “Surrogate Mdeling of Electrical Machine Torque Using Artificial Neural Networks,” IEEE Access, pp. 2200027-220045, Dec. 2021
-	[7] Marius Stender, Oliver Wallcheid, Joachim Boker, “Accurate Torque Estimation for Induction Motors by Utilizing a Hybrid Machine Learning approach,” IEEE 19th International Power Electronics and Motion Control Conference (PEMC), Apr. 2021, DOI: 10.1109/PEMC48073.2021.9432615

## Impact

Contribute to the global transition to smart manufacturing and electrification.

## Expertise Gained 

Artificial Intelligence, Power Electronics, Control, Machine Learning, Reinforcement Learning, Automotive


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/49) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

218
