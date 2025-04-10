Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Adaptive%20Palletizing%20with%20Simulation%20Optimization&tfa_2=254)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Adaptive%20Palletizing%20with%20Simulation%20Optimization&tfa_2=254)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/UR.png"  width=500 /></td>
<td><p><h1>Adaptive Palletizing with Simulation Optimization</h1></p>
<p>Create a flexible robotics palletizing system that adapts to varying box sizes and configurations.</p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://www.universal-robots.com/industries/education-science/" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/UR_Logo.png" width="450" style="display: block; margin: 0 auto;"><br>
   
</a>

## Motivation

Palletizing is an essential task in logistics and manufacturing, directly impacting efficiency in supply chains. Traditional teach pendant-based systems are inflexible and do not adapt well to different box sizes or unexpected layout changes. With the rising demand for agile automation in warehouses and production lines, there is significant industry interest in optimizing pallet patterns to maximize throughput while reducing damage and cycle times. This project aims to utilize optimization and model-based design to create a more flexible palletizing system. Universal Robots are a popular choice in this domain due to their ease-of-use and safety features. Industry references include case studies on palletizing in logistics (as listed [here](https&#58;//www.universal-robots.com/fi/blogi/all-posts/)) and research on [automated layout optimization](https&#58;//ieeexplore.ieee.org/search/searchresult.jsp?newsearch=true&amp;queryText=optimization%20in%20facility%20layout%20design%20of%20production%20AND%20robotics).


## Project Description

Develop an adaptive palletizing system that dynamically generates and adjusts pallet layouts in response to changing conditions. The system will use MATLAB and Simulink to optimize the pallet pattern based on input parameters such as box dimensions, order requirements, and pallet size. High-fidelity simulation using Sim3D will allow students to visualize and validate the adaptive optimization and robot trajectories before deploying the system on a UR3 e-series with minimal code changes. An optional conveyor belt scenario can be integrated into the simulation to model a continuous feed of boxes with unknown sizes.

### Suggested Steps:

#### 1. Start with the baseline model
Familiarize yourseilf with this Simulink [Robotic palletizing example](https://www.mathworks.com/help/robotics/ug/palletize-boxes-using-cobot-with-simulink-3d-animation.html). This model uses a UR robot to palletize boxes of fixed size arriving at a fixed location. It demonstrates core elements like trajectory planning, Sim3D visualization, and interaction with virtual environments.

#### 2. Parameterize the box input
Modify the example to accept variable box sizes, and possibly weights, from structured sources such as Excel, a database, or a MAT-file.

#### 3. Select your palletizing mode and define a data acquisition strategy
Choose how your system will receive box parameters and prepare them for layout optimization:
- **Predefined mode:** All box data (size, weight, ID) is available in advance, loaded from an Excel file, database, or MAT-file. Use direct matching via identifiers like QR codes or sensor readings to verify each box as it arrives.
- **Real-time mode:** Box parameters are unknown beforehand and detected on-the-fly (e.g., from a conveyor belt). Use sensors to capture their attributes and buffer incoming boxes in a temporary holding area until enough data is available for optimization.

#### 4. Implement a data acquisition strategy
Use preloaded data with direct matching (e.g., QR codes or size sensors), or buffer incoming boxes (move them into a temporary different location) until enough data is available for optimization.

#### 5. Integrate an adaptive layout optimizer
Use a suitable discrete optimization method to compute an efficient arrangement of boxes on the pallet. Recommended options include, genetic algoritm ([ga](https://www.mathworks.com/help/gads/ga.html)), Simulated annealing ([simulannealbnd](https://www.mathworks.com/help/gads/simulannealbnd.html)), Mixed-integer linear programming ([intlinprog](https://www.mathworks.com/help/optim/ug/intlinprog.html)) or Custom heuristics, such as greedy or rule-based algorithms for fast, scenario-specific decisions.

- Visualize the computed layouts in Sim3D (via [Simulink 3D Animation](https://www.mathworks.com/help/sl3d/index.html)) to verify that the arrangement is collision-free and efficient. Use this [example](https://www.mathworks.com/help/robotics/ug/palletize-boxes-using-cobot-with-simulink-3d-animation.html) as your starting point.

#### 6. Trajectory Planning and Simulation:
- Use the [Robotics System Toolbox](https://www.mathworks.com/products/robotics.html) to plan motion based on the box positions computed by your palletizing optimizer. Explore various [planning algorithms](https://www.mathworks.com/help/robotics/manipulator-planning.html?s_tid=CRUX_lftnav) (such as RRT, CHOMP) in simulation, ensuring that the adaptive system can re-plan paths dynamically based on updated pallet patterns.
- Visualize these trajectories using Sim3D to confirm that the robot's motion remains smooth and collision-free under different adaptive scenarios.

#### 3. Integration and Real-Time Adaptation:
- Develop a complete control loop in Simulink that combines the adaptive pallet pattern generation with the trajectory planning module.
- Test the system in simulation using [URSim](https://www.universal-robots.com/download/software-e-series/simulator-non-linux/offline-simulator-e-series-ur-sim-for-non-linux-5126-lts/) via the [Real-Time Data Exchange (RTDE) interface](https://www.mathworks.com/help/robotics/referencelist.html?type=function&listtype=cat&category=get-started-urseries-rtde&blocktype=all&capability=&startrelease=&endrelease=) to mimic real-world variations and disturbances.
- If applicable, utilize the RTDE to transition the adaptive control loop from simulation to a physical UR e series robot with minimal adjustments. Ensure consistent coordinate frames and calibration between the simulation and the real robot.

#### Project Variation:
- Explore alternative optimization approaches, such as rule-based methods or machine learning–based predictions, to compare with classical optimization routines.
- Develop a separate simulation scenario featuring a conveyor belt that delivers boxes with unpredictable sizes and frequencies, challenging the system's adaptive capabilities.

#### Advanced Project Work:
- Integrate sensor feedback—such as real-time box dimensions from a vision system (via the Computer Vision Toolbox) or weight sensors—to update the optimization problem in real time.
- Predictive Maintenance Integration:
    - Collect operational sensor data (e.g., joint torque, vibration, temperature) from the UR robot using the UR support package and/or RTDE interface. 
    - Use the [Predictive Maintenance Toolbox](https://www.mathworks.com/help/predmaint/index.html) to process sensor data and identify features indicative of wear or failure, to develop predictive models) and forecast maintenance needs. 
    - Integrate the predictive maintenance module into the adaptive control loop, so that maintenance alerts or adjustments can influence the robot’s operational schedule.
    - Visualize maintenance predictions and sensor trends in Sim3D or via MATLAB dashboards.
- Extend the system by incorporating multi-robot collaboration, where several UR robots coordinate adaptive palletizing in a shared workspace.
- Implement a predictive analytics module to forecast future order patterns and pre-optimize pallet layouts.
- Integrate a real-time dashboard using [MATLAB App Designer](https://www.mathworks.com/products/matlab/app-designer.html) for monitoring system performance, adaptive decisions, and overall cycle time improvements.


## Background Material

- [MATLAB Optimization Toolbox Examples](https://www.mathworks.com/help/optim/)
- [Global Optimization Toolbox](https://www.mathworks.com/help/gads/index.html?s_tid=CRUX_topnav)
- [Simulink 3D Animation webinar](https://www.mathworks.com/videos/simulink-3d-animation-overview-1617559290317.html)
- [Set Up URSim Offline Simulator](https://www.universal-robots.com/articles/ur/ursim-offline-simulator/)
- [Get Started with Real-Time Data Exchange (RTDE) Connectivity Interface](https://www.mathworks.com/help/robotics/setup-for-rtde.html)
- [Palletize Boxes Using Cobot with Simulink 3D Animation](https://www.mathworks.com/help/robotics/ug/palletize-boxes-using-cobot-with-simulink-3d-animation.html)
- [Setting Up Environment for use with MATLAB for UR Development](https://www.mathworks.com/help/robotics/ug/universal-robots-support-from-robotics-system-toolbox.html)
- [Universal Robots Palletizing Resources](https://www.universal-robots.com/applications/palletizing/)
- [Robotiq Simulator](https://designer.suite.robotiq.com/palletizing?_ga=2.248734023.1927584913.1674567500-144819488.1670879631)

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
