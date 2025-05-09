Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Intelligent%20Trip%20Planning%20for%20Battery%20Electric%20Vehicles%20Using%20Real-Time%20Map%20Data&tfa_2=255)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Intelligent%20Trip%20Planning%20for%20Battery%20Electric%20Vehicles%20Using%20Real-Time%20Map%20Data&tfa_2=255)<strong/>to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/BEVtrip.png"  width=500 /></td>
<td><p><h1>Intelligent Trip Planning for Battery Electric Vehicles Using Real-Time Map Data</h1></p>
<p>Simulate electric vehicle trips using real-time map data to evaluate energy-efficient routes and strategies.</p>
</table>

## Motivation

As electric vehicles (EVs) become increasingly central to sustainable transportation, there is a growing need to plan energy-efficient trips that account for real-world driving conditions. Traditional drive cycles often fail to account for dynamic factors like elevation changes and traffic patterns, leading to suboptimal energy management. By leveraging real-time map data, engineers can create more accurate driving cycles that reflect actual road conditions. Using the Virtual Vehicle Composer app, users can generate a custom Battery Electric Vehicle (BEV) model, enabling the development of powertrain systems that enhance energy efficiency, reduce operational costs, and improve overall vehicle performance.

## Project Description

Build a simulation-based workflow for battery electric vehicles that utilizes real-time map data to construct realistic driving cycles and evaluate trip energy consumption. Develop and simulate a custom BEV model in [Simulink®](https://www.mathworks.com/products/simulink.html), using route information obtained via the [Google Maps™ API](https://developers.google.com/maps). The workflow will allow users to evaluate key performance metrics—such as state of charge (SOC), energy usage, and estimated trip cost—based on actual road and traffic conditions.
Enable realistic trip simulations from origin to destination, using publicly available mapping data to replicate route conditions like elevation changes, speed limits, and congestion. The project will result in a toolset that allows BEV users to compare different route options or vehicle configurations and understand how road features affect energy performance.
As an advanced extension, the project may include the development of energy and route optimization strategies that identify cost-effective paths, maximize driving range, and enhance overall trip performance.
Core Project Tasks 
suggested steps:
1.	Acquire and Process Real-Time Route Data
o	Use [MATLAB®](https://www.mathworks.com/products/matlab.html) to interface with the [Google Maps API](https://developers.google.com/maps) and extract data for a given origin-destination pair, including elevation profiles, road segments, and traffic conditions. 
o	Parse and clean data to extract features such as road type, speed limits, elevation changes, and congestion.
o	Construct a time-speed driving cycle from the data and format it for use in Simulink using the [Driving Cycle Source block](https://www.mathworks.com/help/vdynblks/ref/drivecyclesource.html).
2.	 Model the Electric Vehicle Using Virtual Vehicle Composer
o	Use the [Virtual Vehicle Composer app](https://www.mathworks.com/help/vdynblks/ref/virtualvehiclecomposer-app.html) to create a custom BEV model by defining vehicle specifications including battery capacity, motor type, mass, and drag coefficients.
o	Export the vehicle model for simulation.
3.	Simulate Route Scenarios and Predict Energy Use
o	Apply the generated driving cycle to simulate the trip in Simulink.
o	Evaluate performance metrics such as SOC, energy consumed, and estimated operational cost.
o	Investigate how road features and driving behavior affect efficiency.
4.	Visualization of Route and Simulation Results
o	Use the [Mapping Toolbox™](https://www.mathworks.com/products/mapping.html) to plot the simulated route, elevation profile, and key performance indicators (e.g., SOC trends, energy usage). 
o	Provide visual summaries of trip metrics to enhance result interpretation and communication.
Advanced Project work 1 (Optional Extension) 
User-Informed Driving Modes and Scenario-Based Optimization
1.	Implement user-selectable driving behavior modes (e.g., “Eco,” “Normal,” or “Performance”) that vary parameters such as acceleration limits, cruising speed, regenerative braking, and accessory usage (e.g., air conditioning).
2.	Simulate the energy impact of each mode using pre-defined driving cycles and vehicle configurations.
3.	Use simple optimization or scenario-based comparisons to determine the most energy-efficient mode for a given trip. For example:
o	Minimize energy consumption over the simulated route.
o	Compare SOC drop, cost, or trip duration across different modes.
4.	Help users make informed trade-offs by analyzing which mode best aligns with goals like minimizing cost, maximizing range, or reducing time.

Advanced Project Work 2 (Optional Extension)
Charging and Route Optimization
1.	Integrate charging station data into the simulation framework using static or API-based sources.
2.	Simulate vehicle range over the selected route and determine if/when charging stops are required based on SOC predictions.
3.	Use [Optimization Toolbox™](https://www.mathworks.com/products/optimization.html) or custom algorith

## Background Material

•	[Google Maps API V 3 - Tutorial](https://www.w3resource.com/API/google-maps/index.php)
•	[Mapping Toolbox - Exporting Vector Data to KML](https://www.mathworks.com/help/map/exporting-vector-data-to-kml.html)
•	[Get Started with the Virtual Vehicle Composer](https://www.mathworks.com/help/vdynblks/ug/get-started-with-the-virtual-vehicle-composer.html)
•	[How to Build Vehicle Models with the Virtual Vehicle Composer App](https://www.youtube.com/watch?v=qKxB6k9VZ78)
•	[Powertrain Blockset Overview](https://www.mathworks.com/products/powertrain.html)
Suggested readings:
•	[Dynamic Route Optimization: How to Get Started](https://nextbillion.ai/blog/dynamic-route-optimization)
•	Z. Wang and S. Wang, "Real-Time Dynamic Route Optimization Based on Predictive Control Principle," in IEEE Access, vol. 10, pp. 55062-55072, 2022, doi: 10.1109/ACCESS.2022.3176950. [[pdf](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9779771)]
•	Xiang, Y., Yang, J., Li, X., Gu, C., & Zhang, S. (2022). Routing Optimization of Electric Vehicles for Charging With Event-Driven Pricing Strategy. IEEE Transactions on Automation Science and Engineering, 19(1), 7-20. https://doi.org/10.1109/TASE.2021.3102997 [[pdf[(https://purehost.bath.ac.uk/ws/portalfiles/portal/225997510/Final_version_route_planning_for_EV.pdf)]


## Impact

Reduce energy use and environmental impact in electric vehicle travel.

## Expertise Gained 

Sustainability and Renewable Energy, Automotive, Electrification, Modeling and Simulation, Optimization

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/128) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

255