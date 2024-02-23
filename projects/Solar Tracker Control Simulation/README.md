Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Solar%20Tracker%20Control%20Simulation&tfa_2=249)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Solar%20Tracker%20Control%20Simulation&tfa_2=249)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/solarTracker.jpg"  width=400 /></td>
<td><p><h1>Solar Tracker Control Simulation</h1></p>
<p>Design a control system for a multi axis solar tracker.</p>
</table>

## Motivation

As the world increasingly turns to renewable energy sources to combat climate change and reduce dependency on fossil fuels, solar energy has become a focal point in the transition to a sustainable future. Solar trackers, which adjust the position of solar panels to follow the sun's trajectory, can significantly improve the efficiency of solar energy systems. By optimizing the angle of incidence between the solar panels and sunlight, trackers can enhance energy capture and, consequently, the overall output of solar power systems.

The significance of solar tracking technology is not limited to its environmental advantages. The renewable energy sector is experiencing a surge in demand for sophisticated tracking systems designed to optimize energy production and minimize expenses. Cutting-edge developments in solar tracking are swiftly being embraced by both large-scale solar farms and home-based solar setups, indicating a strong and expanding market eager for enhancements and deployment of such innovations.

## Project Description

Design and implement a controller to control the axis of a solar tracker system to optimize the angle of incidence between solar panels and sunlight for maximum energy absorption. The foundational element for this project is the &quot;[Using the Worm and Gear Constraint Block - Solar Tracker](https://www.mathworks.com/help/sm/ug/using-the-worm-and-gear-constraint-block-solar-tracker.html)&quot; example from [Simscape™ Multibody™](https://www.mathworks.com/products/simscape-multibody.html). Create a simulation-based control system that manages the movement of at least one mechanical axis of a solar panel system, with the aim of accurately tracking the sun's path across the sky.
The decision on which axis to prioritize and implement first in a solar tracking system is based on maximizing solar energy capture, which is influenced by the path of the sun relative to the location of the solar panels. For example, in equatorial regions, the sun's elevation does not vary as much throughout the year, so a single-axis azimuth tracker might be sufficient. Conversely, in higher latitudes, the elevation axis might be more critical due to the significant variation in the sun's altitude with the seasons. Therefore, the design of the solar tracking system must be tailored to the specific geographic location of the installation and the orientation of the solar panels. Here's a brief overview of the typical functions of each axis in a solar tracking system:
-	**Azimuth Axis:** This axis allows the solar tracker to rotate horizontally. The movement along this axis aligns the solar panels with the sun's position from east to west throughout the day. Control of the azimuth axis is essential for following the sun's apparent motion across the sky, which is primarily due to the Earth's rotation.
-	**Elevation (Altitude) Axis:** The elevation axis enables vertical movement of the solar panels. Adjustments along this axis change the tilt of the panels to match the sun's elevation in the sky, which varies with the time of day and seasons.
-	**Polar (or Roll) Axis:** The polar axis is usually added for additional adjustments, such as compensating for the Earth's axial tilt or optimizing panel orientation based on other factors. A design with a polar axis allows the tracker to follow the sun's seasonal variation.

**Suggested Steps:**
1.	Become familiar with Simulink and Simscape Multibody, and the provided solar tracker example model.
2.	Add the Electrical model of a motor that will be responsible for rotating the mechanical axes of the tracker. Use a motor type that is appropriate for this application and leverage [Simscape™ Electrical™](https://www.mathworks.com/help/sps/index.html?s_tid=CRUX_lftnav)
3.	Design a control system for one axis of the solar tracker using Simulink® and the Control System Toolbox™. Begin with PID control and consider more advanced control strategies as necessary. The control signal will be used as input of the motor to physically adjust the solar tracker's position.
4.	Develop an algorithm that calculates the optimal position of the axis to ensure maximum exposure to solar radiation and communicates the target position to the axis controller.
5.	Validate the performance of the entire system, including the control system and motor models, through simulation. Use the results to refine the control strategy and motor parameters.

**Advanced Work:**
-	Expand the model to include a second and even a third axis for roll motion and implement controllers for all three axes.
-	Analyze the efficiency of the solar panel system with and without the solar tracker using MATLAB®, employing tools such as the Solar Position Algorithms for solar radiation.
-	Implement machine learning algorithms to predict the sun's trajectory and optimize the tracker's movements, potentially using the Deep Learning Toolbox™
-	Explore energy storage options and simulate the integration with the solar tracker system to create a more resilient energy solution.
-	Design fault detection and recove

## Background Material

-	[Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink)
-	[Simscape Onramp](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape)
-	[Circuit Simulation Onramp](https://matlabacademy.mathworks.com/details/circuit-simulation-onramp/circuits)
-	[Power Systems Simulation Onramp - CHAPTER 4 (System Integration)](https://matlabacademy.mathworks.com/details/power-systems-simulation-onramp/orps)
-	[Control Design Onramp with Simulink](https://matlabacademy.mathworks.com/details/control-design-onramp-with-simulink/controls)
-	[Getting Started with Simulink](https://uk.mathworks.com/videos/series/getting-started-with-simulink.html)
-	[White Paper on Model-Based Design](https://uk.mathworks.com/content/dam/mathworks/white-paper/gated/model-based-design-with-simulation-white-paper.pdf)
-	[Quiz: How Much Do You Know About Model-Based Design?](https://uk.mathworks.com/campaigns/offers/next/model-based-design-quiz.html)
-	[Getting Started with Simulink for Controls]( https://www.mathworks.com/videos/getting-started-with-simulink-69027.html)
-	[What Is MPPT Algorithm?](https://uk.mathworks.com/discovery/mppt-algorithm.html?s_tid=srchtitle_site_search_3_MPPT)
-	[Optimizing Solar Array Performance Using MPPT](https://uk.mathworks.com/videos/optimizing-solar-array-performance-using-mppt-1657880084126.html?s_tid=srchtitle_site_search_8_solar%20tracker)
-	[Using the Worm and Gear Constraint Block - Solar Tracker](https://www.mathworks.com/help/sm/ug/using-the-worm-and-gear-constraint-block-solar-tracker.html)
-	Simulink [PV Array block]( https://www.mathworks.com/help/sps/powersys/ref/pvarray.html)
-	National Renewable Energy Laboratory (NREL) – [Solar Position Algorithm (SPA)](https://midcdmz.nrel.gov/spa/)
-	NOAA [Solar Position Calculator](https://gml.noaa.gov/grad/solcalc/azel.html)

**Suggested Readings**
-	National Renewable Energy Laboratory (NREL) - [Rotation Angle for the Optimum Tracking of One-Axis Trackers](https://www.nrel.gov/docs/fy13osti/58891.pdf)
-	[Solar Position Algorithm for Solar Radiation Applications](https://www.nrel.gov/docs/fy08osti/34302.pdf)
-	S. K. Jha, S. Roy, V. K. Singh and D. P. Mishra, "Sun's Position Tracking by Solar Angles Using MATLAB," 2020 International Conference on Renewable Energy Integration into Smart Grids – [link]( https://ieeexplore.ieee.org/document/9174533)
-	[Design of PID controller for sun tracker system using QRAWCP approach](https://www.semanticscholar.org/paper/Design-of-an-automatic-solar-tracking-controller%3A-Sharma-Vaidya/7cc1277aec002d1d91313bc3056ffb5cae68e39c)


## Impact

Maximize solar irradiance to increase renewable energy production.

## Expertise Gained 

Sustainability and Renewable Energy, Control, Modeling and Simulation, Solar Panels

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/99) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

249
