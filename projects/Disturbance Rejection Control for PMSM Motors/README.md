**Project 207:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/treadmill.jpg"  width=500 /></td>
<td><p><h1>Disturbance Rejection Control for PMSM Motors </h1></p>
<p> Implement Active Disturbance Rejection Control (ADRC) algorithm for closed-loop speed control system for a Permanent Magnet Synchronous Motors (PMSM).</p>
</table>

## Motivation

Electric motors are found in appliances, industry automation, process control, cars and everywhere. 
Permanent magnet synchronous motors (PMSM) are special type of brushless motors that offer advantages like high efficiency, high torque to weight ratio, high performance in both high and low speed of operation, and low maintenance over other motors.
Control algorithms are the key challenges in the motor control industry. Speed control of PSMS motors is commonly achieved by employing Proportional-Integral (PI) controllers. However, in certain applications (like in treadmills, electric vehicles, etc.), the unmodeled highly nonlinear dynamics of disturbances, due to sudden and frequent load variations, makes the use of PI controllers unsuited. Active Disturbance Rejection Control (ADRC) algorithm is a suitable strategy as it offers better dynamic performance for any sudden changes in the load. 

## Project Description

Work with Motor Control Blockset™ product to implement an Active Disturbance Rejection Control (ADRC) for PMSM motor using MATLAB® and Simulink®. In Motor Control Blockset, you can find [reference examples for motor control with PI](https://www.mathworks.com/help/mcb/gs/field-oriented-control-acim-using-quadrature-encoder.html). Implement an Active Disturbance Rejection Control (ADRC) for motor control to reject the disturbances and compare the controller performance with conventional PI control for the sudden load changes. You can refer applications like treadmill or electric vehicle where sudden changes in the load is expected.

Suggested steps:

1. Understand the [reference examples for closed-loop speed control](https://www.mathworks.com/help/mcb/gs/field-oriented-control-acim-using-quadrature-encoder.html) in Motor Control Blockset. Simulate the example models with different motor loads for better understanding the dynamics of the system. 
2. In reference example, add the load dynamics of a treadmill or similar application and observe the controller performance.
3. Implement ADRC for motor control in Simulink®. You can also try different control algorithms like reinforcement learning or Model predictive control for disturbance rejection control.
4. Simulate and ensure the controller meets the control gains and motor spins and tracks the reference speed meeting the control objective. Verify the controller performance for treadmill load dynamics.
5. Compare the ADRC controller performance with PI controller. It is likely to observe how disturbances are handled better in ADRC compared to PI controller.

Project variations:

Explore control algorithms other than ADRC like reinforcement learning, Model predictive control etc., and compare its performance in disturbance rejection with a conventional PI controller.

Advanced project work: 

Extend this simulation work in hardware with small motor kit to experience the ADRC algorithm.  You can refer the example [Control PMSM Loaded with Dual Motor (Dyno)](https://www.mathworks.com/help/mcb/gs/dual-motor-dyno-control-for-pmsm.html?searchHighlight=Control%20PMSM%20Loaded%20with%20Dual%20Motor&s_tid=srchtitle) for implementing the speed control and simulate the load characteristics in the motor coupled to the primary  motor.


## Background Material

Examples:
- [Motor Control Blockset Examples](https://www.mathworks.com/help/mcb/examples.html?s_tid=CRUX_topnav)
- [Surface-mount PMSM](https://www.mathworks.com/help/mcb/ref/surfacemountpmsm.html)
- [Estimate control gains](https://www.mathworks.com/help/mcb/gs/estimate-control-gains-from-motor-parameters.html)

Suggested readings:

[1] Danyun Lin; Wenguang Luo; Hao Zhang, “Active disturbance rejection controller of BLDCM in electric vehicle”, 2011 International Conference on Electrical Machines and Systems.

[2] Zhiqiang Gao, Cleveland State University, U.S.A.; Bao-Zhu Guo, University of the Witwatersrand, South Africa, “Active Disturbance Rejection Control”, A Pre-Conference Tutorial at the 2014 IFAC World Congress.

[3] Gernot Herbst, A Simulative Study on Active Disturbance Rejection Control (ADRC) as a Control Tool for Practitioners.


## Impact

Improve the customer experience with advanced control strategies to handle the sudden changes in the motor load.

## Expertise Gained 

Artificial Intelligence, Electrification, Control, Modeling and Simulation, Reinforcement Learning


## Project Difficulty

Master's, Bachelor, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/38) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[AnanthKumarS](https://github.com/AnanthKumarS)

## Project Number

207
