**Project 235:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/UAM.jpg"  width=500 /></td>
<td><p><h1>Reinforcement Learning Based Fault Tolerant Control of a Quadrotor</h1></p>
<p>Develop a fault-tolerant controller for a quadcopter using model-based reinforcement learning.</p>
</table>

## Motivation

Unmanned aerial vehicles (UAVs), such as quadcopters, are nowadays popular vehicles adopted for various applications. The actual operation of quadcopters can be affected by disturbances such as wind, rain, dust, etc., which may cause component faults. Fault is defined as a change in a system's property or parameters that cause the system to behave differently from its design. A fault-tolerant controller (FTC) is a control strategy that aims to improve the performance of a system that is operating in degraded performance due to fault [1].

Deployment of multi-rotor drones for applications like Urban Air Mobility (UAM), product delivery, etc., requires a proper behavior of the vechile at all times to ensure safety of the environemnt and people nearby. That is why a FTC is a necessary block for such systems and both academic researchers and industry professionals are looking to improve methods to observe faults and provide a control strategy able to overcome them and ensuring safe behavior. 

FTCs are characterized as model-based or data-driven based on the method used to develop the controllers. Model-based techniques necessitate knowledge of the system's model and parameters in order to design a fault-tolerant controller. Data-driven approaches, on the other hand, learn the FTC directly from system data. The fundamental problem of model-based FTC approaches is that their effectiveness is dependent on the correctness of the system model, which is difficult to establish when system parameters vary due to faults. Furthermore, complex systems necessitate complicated controllers, which has an impact on the controllers' robustness. Data-driven techniques, on the other hand, utilize data to design FTC without knowing the full dynamics of the system. As a result, data-driven methods, particularly reinforcement learning (RL)-based techniques, have recently gained the attention of a number of researchers.

## Project Description

Train an RL agent to develop a fault-tolerant controller for a quadcopter using model-based reinforcement learning. The framework uses the system dynamics and a Kalman filter-based estimator to estimate the fault-related parameters online, which will be used to identify the occurrence of a fault in the system. Once you identify the event of a fault, you will use the fault-related parameters to train an RL agent that tunes the position and attitude controller gains of the quadcopter to compensate for the happening fault.

Suggested steps:
1. Review [Tune PI Controller using Reinforcement Learning](https://www.mathworks.com/help/reinforcement-learning/ug/tune-pi-controller-using-td3.html) example to learn how to use the [Reinforcement Learning Toolbox](https://www.mathworks.com/help/reinforcement-learning/index.html?s_tid=CRUX_lftnav) to tune a PI controller for a system.
2. Review [Quadcopter Drone Model in Simscape](https://www.mathworks.com/matlabcentral/fileexchange/63580-quadcopter-drone-model-in-simscape?s_tid=srchtitle) example, which contains a detailed model of the quadcopter including the airframe, battery, and propulsion systems, and learn how a PID control can be applied for a quadcopter's position and attitude control.
3. Design a reward function that will be used for training the RL agent (consider a reward function that takes into account the error between the reference and actual trajectory). To represent fault behavior of the system, you may use the equivalent resistance of the motors as in [2].
4. Use the simulation environment to simulate faulty behaviors and train an RL agent to tune the quadcopter position and attitude PID controller gains.
5. Apply the trained model for tuning the PID controllers in the presence of fault/s.


Advanced Project work:
- Implement a state estimator for monitoring the fault related parameters that will be used for training the RL agent (you may refer to [Fault Detection Using an Extended Kalman Filter](https://www.mathworks.com/help/predmaint/ug/Fault-Detection-Using-an-Extended-Kalman-Filter.html), [2], and [3]).
- Consider complete sub-component failure instead of fault (degradation).

## Background Material

 Examples:
- [PID Autotuning for UAV Quadcopter](https://www.mathworks.com/help/slcontrol/ug/pid-controller-tuning-for-a-uav-quadcopter.html)
- [UAV Inflight Failure Recovery](https://www.mathworks.com/help/slcontrol/ug/uav-quadcopter-controller-tuning-and-inflight-failure-recovery.html)
- [Simulink Drone Reference Application](https://www.mathworks.com/matlabcentral/fileexchange/67625-simulink-drone-reference-application)
- [UAV Package Delivery](https://www.mathworks.com/help/uav/ug/uav-package-delivery.html)

Suggested readings:
- [1] Blanke, M., Kinnaert, M., Lunze, J., Staroswiecki, M., and Schröder, J., Diagnosis and fault-tolerant control, Vol. 2, Springer, 2006.
- [2] Bhan, L., Quinones-Grueiro, M., and Biswas, G., “Fault Tolerant Control combining Reinforcement Learning and Model-based Control,” 2021 5th International Conference on Control and Fault-Tolerant Systems (SysTol), pp. 31–36, 2021.
- [3] Matthew Daigle, Bhaskar Saha, and Kai Goebel. A comparison of filter-based approaches for model based prognostics. In 2012 IEEE Aerospace Conference, pages 1–10, 2012.

## Impact

Improve safety of multi-rotor drones

## Expertise Gained 

Drones, Artificial Intelligence, Robotics, Control, Reinforcement Learning, UAV


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/71) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

235
