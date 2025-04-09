Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Adaptive%20Palletizing%20with%20Simulation%20Optimization&tfa_2=254)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Adaptive%20Palletizing%20with%20Simulation%20Optimization&tfa_2=254)<strong/>to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/' '"  width=500 /></td>
<td><p><h1>Adaptive Palletizing with Simulation Optimization</h1></p>
<p>Create a flexible robotics palletizing system that adapts to varying box sizes and configurations.</p>
</table>

## Motivation

Palletizing is an essential task in logistics and manufacturing, directly impacting efficiency in supply chains. Traditional teach pendant-based systems are inflexible and do not adapt well to different box sizes or unexpected layout changes. With the rising demand for agile automation in warehouses and production lines, there is significant industry interest in optimizing pallet patterns to maximize throughput while reducing damage and cycle times. This project aims to utilize optimization and model-based design to create a more flexible palletizing system. Universal Robots are a popular choice in this domain due to their ease-of-use and safety features. Industry references include case studies on palletizing in logistics (as listed [here](https&#58;//www.universal-robots.com/fi/blogi/all-posts/)) and research on [automated layout optimization](https&#58;//ieeexplore.ieee.org/search/searchresult.jsp?newsearch=true&amp;queryText=optimization%20in%20facility%20layout%20design%20of%20production%20AND%20robotics).


## Project Description

Develop an adaptive palletizing system that dynamically generates and adjusts pallet layouts in response to changing conditions. The system will use MATLAB and Simulink to optimize the pallet pattern based on input parameters such as box dimensions, order requirements, and pallet size. High-fidelity simulation using Sim3D will allow students to visualize and validate the adaptive optimization and robot trajectories before deploying the system on a UR3 e-series with minimal code changes. An optional conveyor belt scenario can be integrated into the simulation to model a continuous feed of boxes with unknown sizes.

## Suggested Steps:

### 1. Adaptive Pallet Pattern Generation:
- Integrate dynamic inputs—such as variable box sizes, real-time order updates, or sensor measurements—from data sources like Excel, a database, or live sensor measurements data (for example using the [Computer Vision Toolbox](https://www.mathworks.com/products/computer-vision.html)).
- Implement a custom palletizing scenario where boxes information is unknown or known in advanced. For example:
  - The robot obtains box details as they arrive (e.g. from a conveyor belt) 
  - Box parameters (such as size, weight, and ID) are provided a-priori via an Excel file or database.
- Develop a strategy to identify enough box parameters to start the patter optimization process, according with the chosen palletizing scenario. Possible approaches might be: 
  - If box parameters are unknown, use sensors to capture their parameters and temporarily store the boxes (e.g. on a secondary conveyor) until sufficient data is gathered. 
  - If box data is available in advance, match incoming boxes with the corresponding records from the database using direct sensor measurements or QR code. 
- Adopt an algorithm from the MathWorks [Optimization Toolbox](https://www.mathworks.com/products/opt) or develop a custom solution to determine the optimal arrangement of boxes on a pallet. 
- Visualize the computed layouts in Sim3D (via [Simulink 3D Animation](https://www.mathworks.com/help/sl3d/index.html)) to verify that the arrangement is collision-free and efficient. Use this [example](https://www.mathworks.com/help/robotics/ug/palletize-boxes-using-cobot-with-simulink-3d-animation.html) as your starting point.

### 2. Adaptive Trajectory Planning and Simulation:
- Utilize the [Robotics System Toolbox](https://www.mathworks.com/products/robotics.html) to generate robot trajectories corresponding to the adaptive pallet pattern.
- Incorporate feedback loops in Simulink that allow the system to adjust trajectories in real time if box positions or pallet dimensions change unexpectedly.
- Test various [planning algorithms](https://www.mathworks.com/help/robotics/manipulator-planning.html?s_tid=CRUX_lftnav) (such as RRT, CHOMP) in simulation, ensuring that the adaptive system can re-plan paths dynamically based on updated pallet patterns.
- Visualize these trajectories using Sim3D to confirm that the robot's motion remains smooth and collision-free under different adaptive scenarios.

### 3. Integration and Real-Time Adaptation:
- Develop a complete control loop in Simulink that combines the adaptive pallet pattern generation with the trajectory planning module.
- Integrate sensor feedback—such as real-time box dimensions from a vision system (via the Computer Vision Toolbox) or weight sensors—to update the optimization problem in real time.
- Test the system in simulation using [URSim](https://www.universal-robots.com/download/software-e-series/simulator-non-linux/offline-simulator-e-series-ur-sim-for-non-linux-5126-lts/) via the [Real-Time Data Exchange (RTDE) interface] to mimic real-world variations and disturbances.
- If applicable, utilize the RTDE to transition the adaptive control loop from simulation to a physical UR e series robot with minimal adjustments. Ensure consistent coordinate frames and calibration between the simulation and the real robot.

## Background Material

- [MATLAB Optimization Toolbox Examples](https://www.mathworks.com/help/optim/)
- [Simulink 3D Animation webinar](https://www.mathworks.com/videos/simulink-3d-animation-overview-1617559290317.html)
- [Set Up URSim Offline Simulator](https://www.universal-robots.com/articles/ur/ursim-offline-simulator/)
- [Get Started with Real-Time Data Exchange (RTDE) Connectivity Interface](https://www.mathworks.com/help/robotics/setup-for-rtde.html)
- [Palletize Boxes Using Cobot with Simulink 3D Animation](https://www.mathworks.com/help/robotics/ug/palletize-boxes-using-cobot-with-simulink-3d-animation.html)
- [Setting Up Environment for use with MATLAB for UR Development](https://www.mathworks.com/help/robotics/ug/universal-robots-support-from-robotics-system-toolbox.html)
- [Universal Robots Palletizing Resources](https://www.universal-robots.com/applications/palletizing/)

## Suggested Papers:
Lee J-D, Chang C-H, Cheng E-S, Kuo C-C, Hsieh C-Y. *Intelligent Robotic Palletizer System*. Applied Sciences. 2021; 11(24):12159.  
https://doi.org/10.3390/app112412159

## Impact

Scale up solutions for automated manufacturing and logistics.

## Expertise Gained 

Robotics, Manipulators, Modeling and Simulation, Optimization

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/127) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

254