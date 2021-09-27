**Project 225:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/satellite.jpg"  width=500 /></td>
<td><p><h1>Satellite Collision Avoidance</h1></p>
<p>Model satellites in Low Earth Orbit (LEO) to identify conjunctions and prevent collisions with space debris, while maintaining orbital requirements.</p>
</table>

## Motivation

The satellite industry is experiencing unprecedented growth, with new companies launching record numbers of satellites transforming global communication, providing near real-time images of our planet, and even enabling commercial space tourism.

As more and more satellites are added to low Earth orbit, the probability of collisions between satellites and orbital debris continues to rise.  This is compounded by the fact that any collisions that do occur (either between operational satellites and debris or two pieces of debris) create more space debris on impact.  Satellites and orbital debris travel at orbital speeds greater than 17,500 mph (7825 m/s) in low earth orbit.  At these speeds, even relatively small orbital debris can cause substantial to catastrophic damage to a satellite or a spacecraft if a collision occurs.

In [March 2021, a Chinese military satellite launched in September 2019 collided](https://www.space.com/space-junk-collision-chinese-satellite-yunhai-1-02) with a 10-50 cm piece of debris from the Russian Zenit-2 rocket that launched Russia’s Tselina-2 satellite in September 1996.  This collision resulted in 37 additional, trackable debris objects, and likely many more smaller pieces that remain untracked.

According to the [NASA Orbital Debris Program Office](https://www.orbitaldebris.jsc.nasa.gov/faq/#), there are approximately 23,000 pieces of debris larger than 10 cm orbiting the Earth. There are half a million pieces of debris between 1 and 10 cm, and approximately 100 million pieces of debris 1 mm or larger.  The United States Space Command (USSPACECOM) Space Surveillance Network (SSN) sensors catalog and track approximately 27,000 pieces of orbital debris in near-Earth orbit (larger than 10 cm).  This information can be obtained from [Space-track.org](https://www.space-track.org/).

Historically, satellite operators predict and manually maneuver spacecraft to avoid conjunctions with other spacecraft and cataloged space debris.  The SSN, for example, analyses known orbital debris trajectories over time to identify upcoming potential close encounters with the International Space Station.  If large debris is projected to pass within a few kilometers of the space station and probability of collision is greater than 1 in 10,000, a maneuver is scheduled to avoid conjunction.

The SpaceX Starlink constellation is the [first commercial application](https://spectrum.ieee.org/spacex-preps-selfdriving-satellites-for-launch) of an autonomous conjunction avoidance system.

## Project Description

Work with the [Aerospace Toolbox](https://www.mathworks.com/products/aerospace-toolbox.html) and [Aerospace Blockset™](https://www.mathworks.com/products/aerospace-blockset.html) products to identify potential satellite-debris conjunctions, and develop and analyze an automated algorithm for satellites to avoid space debris over time while maintaining orbital requirements.  Test and validate your algorithm.

Suggested steps:
1.	Review [Comparison of Orbit Propagators](https://www.mathworks.com/help/aerotbx/ug/comparison-of-orbit-propagators.html) and Constellation Modeling with the [Orbit Propagator Block](https://www.mathworks.com/help/aeroblks/constellation-modeling-with-the-orbit-propagator-block.html) examples to learn how to propagate orbital trajectories using Two-Body-Keplerian, SGP4 and SDP4 propagators in Aerospace Toolbox and Aerospace Blockset.  
2.	Run additional examples listed in the Background Material section below.
3.	Download space debris states from [Space-track.org](https://www.space-track.org/).
4.	Propagate the debris trajectories using SGP4 propagation algorithm.
5.	Define a satellite mission with specific orbit definition and requirements. e.g.: earth imaging or broadband communications.
6.	Propagate the satellite’s states over time, along with the space debris.
7.	Identify potential conjunctions during the analysis window [5,6].
	-	Determine close contacts by distance criteria.

Extended project work:
1.	Plan avoidance maneuver for upcoming conjunction with debris.
	-	Maintain orbit requirements when possible.
2.	Simulate avoidance maneuver.
3.	Design and execute a test and validation method for your algorithm.  Consider using [Verification and Validation products](https://www.mathworks.com/solutions/verification-validation.html).

Advanced project work:
1.	Develop probability of collision analysis to enhance conjunction detection in step 7 by determining close contacts by both distance criteria and probability of collision [5].
2.	Expand the analysis to cover a constellation of satellites.  Size of the constellation can be defined from your chosen satellite mission. 
3.	Improve the avoidance maneuver algorithm by optimizing fuel consumption during the maneuver including optimizations for the orbit experiencing changes due to predictable Earth perturbations and the impact of flying in a variable drag environment ([1]).  Fuel consumption is a main constraint during the satellite mission determining the satellite operational lifetime.  Determine a fuel consumption estimate to establish a maneuver propulsion budget and lifetime analysis ([1], [2]).  Fuel consumption may be assumed to be in terms of ΔV.
4.	Automate the avoidance maneuver to continue indefinitely.  This will be an iterative process to continue avoiding debris as orbit changes.
5.	Design conceptual architecture of satellite including propulsion system and Attitude and Orbit Control System (AOCS).  Consider using [System Composer](https://www.mathworks.com/products/system-composer.html) and [CubeSat Vehicle Model](https://www.mathworks.com/help/aeroblks/model-and-simulate-cubesats.html).
	-	Number and type of actuators.
	-	Number and type of sensors.
6.	Design and implement AOCS and propulsion system control system in MATLAB and Simulink.

## Background Material

-	[Get Started with Aerospace Toolbox](https://www.mathworks.com/help/aerotbx/getting-started.html) for general information about the toolbox.
-	[Get Started with Aerospace Blockset](https://www.mathworks.com/help/aeroblks/getting-started-1.html) for general information about the blockset.
-	[Space Applications](https://www.mathworks.com/help/aerotbx/satellite-scenario.html) has an overview of objects and functions for modeling, analyzing, and visualizing satellites with Aerospace Toolbox and Aerospace Blockset.
-	[Space Applications — Examples](https://www.mathworks.com/help/aerotbx/examples.html?category=satellite-scenario) provides a set of examples satellite scenario modeling within the MATLAB environment.
-	[Spacecraft](https://www.mathworks.com/help/aeroblks/spacecraft.html) has an overview of available blocks and examples for modeling, simulating and visualizing spacecraft with Aerospace Blockset.
-	[Comparison of Orbit Propagators](https://www.mathworks.com/help/aerotbx/ug/comparison-of-orbit-propagators.html).
-	[Constellation Modeling with the Orbit Propagator Block](https://www.mathworks.com/help/aeroblks/constellation-modeling-with-the-orbit-propagator-block.html) provides an example of how to propagate the orbits of a constellation of satellites in a Simulink model.
-	[Mission Analysis with the Orbit Propagator Block](https://www.mathworks.com/help/aeroblks/mission-analysis-with-the-orbit-propagator-block.html) is an example showing how to perform line-of-sight access analysis from Simulink simulations.
-	[Aerospace Blockset CubeSat Simulation Library](https://www.mathworks.com/matlabcentral/fileexchange/70030-aerospace-blockset-cubesat-simulation-library?s_tid=srchtitle_cubesat%20library_1).

Suggested readings:

[1] Patano, S., Myers, R., Aviles, J., and Bock, G., “GPM Orbital Maintenance Planning and Operations in Low Solar Activity Environment”, 2018 SpaceOps Conference, Marseille, France, May 2018.

[2] Matko, D., Rodič, T., Oštir, K.,  Marsetič, A., and Peljhan, M., “Optimization of Fuel Consumption with Respect to Orbital Requirements for High Resolution Remote Sensing Satellite Constellations”, V: 25th AIAA/USU Conference on Small Satellites, Aug 8-11, 2011, Logan, UT, USA.

[3] Office of the Chief Engineer, NASA, “Collision Avoidance for Space Environment Protection”, November 19, 2020, NID 7120.132.

[4] Office of Safety and Mission Assurance, NASA, “NASA Procedural Requirements for Limiting Orbital Debris and Evaluating the Meteoroid and Orbital Debris Environments”, February 16, 2017, NPR 8715.6B.

[5] Aida, Saika, “Conjunction Risk Assessment and Avoidance Maneuver Planning Tools”, DLR German Space Operations Center (GSOC), Oberpfaffenhofen, Weßling, Germany.

[6] NASA, “NASA Spacecraft Conjunction Assessment and Collision Avoidance Best Practices Handbook”, NASA/SP-20205011318, Dec 2020.

## Impact

Contribute to the success of satellite mega-constellations and improve the safety of the Low Earth Orbit (LEO) environment.

## Expertise Gained 

Autonomous Vehicles, Aerospace, Satellite, Control, Modeling and Simulation

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/57) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

225
