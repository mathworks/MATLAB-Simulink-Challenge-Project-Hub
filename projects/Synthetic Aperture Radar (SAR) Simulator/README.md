**Project 211:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/SARPicture.png"  width=500 /></td>
<td><p><h1>Synthetic Aperture Radar (SAR) Simulator</h1></p>
<p>Develop a lightweight Synthetic Aperture Radar (SAR) raw data simulator.</p>
</table>

## Motivation

Achieving all-weather imaging capabilities is a critical need for remote-sensing, airborne imaging, and monitoring applications. SAR provides a suitable mechanism to attain this weather agnostic capability. SAR imaging allows us to create high spatial resolution imagery from reflectivity signals of objects and environments obtained through radar sensing.
The cost of validating such an image formation algorithm on-board a moving platform is considerably high and to reduce this, an offline/lab-based algorithm validation is needed. Hence, developing simulators that can generate Radar in-phase quadrature (IQ) data for a scenario will significantly help validate the algorithms. There can be different aspects of object resolution refinement that can be evaluated in the simulator. The focus here is on refining the radar cross-section (RCS) and/or impact of various waveforms and their characteristics on the generated image.

## Project Description

The following steps (shown in order) provide guidelines to help you develop a high-quality SAR data simulator and imaging tool. The end goal would be to support a workflow where you define SAR system parameters, setup the environment, simulate IQ data based on the system definition, and validate it using an image formation algorithm of your choice.

Suggested Steps:
1. Conduct a literature survey of SAR systems, SAR data simulation, and image formation algorithms [1-3].
2. Use [Phased Array System Toolbox™](https://www.mathworks.com/help/phased/index.html) and [Radar Toolbox](https://www.mathworks.com/help/radar/index.html) to build the simulator.
3. Use MATLAB® for development of a simulation mechanism to generate IQ data for a single point scatterer under [Strip-map SAR mode](https://www.mathworks.com/help/radar/ug/stripmap-synthetic-aperture-radar-sar-image-formation.html;jsessionid=91731983519938346125a98e50b0 ).
4. Incorporate the effects of atmospheric loss, Earth’s curvature, and antenna grazing angle in the simulator. (https://www.mathworks.com/help/radar/radar-system-analysis.html) 
5. Process the raw data from the simulator and reconstruct the point target using a SAR image formation algorithm of your choice [5-6].
6. The results can be verified using the desired versus achieved image resolution for point targets using metrics like PSLR (Peak Sidelobe Ratio) and ISLR (Integrated Sidelobe Ratio).

Project variations: 
1. RCS refinement:
	1. Incremental refinement of the simulator by varying [RCS models](https://www.mathworks.com/help/radar/ug/modeling-target-radar-cross-section.html) and characteristics, adding targets of different variety (distributed, extended), effect of ground clutter and analysis of the generated image.
	2. Analyze the impact using metrics in step 6 above or other metrics of your choice.
2. Waveform refinement:
	1. Perform Literature survey of waveforms for SAR systems, SAR data simulation and image formation algorithms. [1-4]
	2. Vary the type of [waveforms and the waveform characteristics] 
(https://www.mathworks.com/help/phased/waveform-design-and-analysis.html) including bandwidth, operating frequency, pulse width, PRF etc. and analyze the impact of this change on the target characteristics and efficiency in mitigating clutter.


## Background Material

Examples:
-	[Stepped FM based SAR system design in Simulink](https://www.mathworks.com/help/radar/ug/synthetic-aperture-radar-system-simulation-and-image-formation.html)
-	[Stripmap SAR Image Formation](https://www.mathworks.com/help/phased/ug/stripmap-synthetic-aperture-radar-image-formation.html)
-	[Squinted Spotlight Image Formation](https://www.mathworks.com/help/phased/ug/squinted-spotlight-synthetic-aperture-radar-sar-image-formation.html) 

Suggested Readings

[1] A. Moreira, P. Prats-Iraola, M. Younis, G. Krieger, I. Hajnsek and K. P. Papathanassiou, "A tutorial on synthetic aperture radar," in IEEE Geoscience and Remote Sensing Magazine, vol. 1, no. 1, pp. 6-43, March 2013, doi: 10.1109/MGRS.2013.2248301.

[2] Balmer, R. Principles of Synthetic Aperture Radar. Surveys in Geophysics 21, 147–157 (2000). https://doi.org/10.1023/A:1006790026612.

[3] Yee Kit Chan and Voon Koo, "An Introduction to Synthetic Aperture Radar (SAR)," Progress In Electromagnetics Research B, Vol. 2, 27-60, 2008. 

[4] J. Yang, X. Huang, T. Jin, J. Thompson and Z. Zhou, "Synthetic Aperture Radar Imaging Using Stepped Frequency Waveform," in IEEE Transactions on Geoscience and Remote Sensing, vol. 50, no. 5, pp. 2026-2036, May 2012, doi: 10.1109/TGRS.2011.2170176.

[5] D. C. Munson and R. L. Visentin, "A signal processing view of strip-mapping synthetic aperture radar," in IEEE Transactions on Acoustics, Speech, and Signal Processing, vol. 37, no. 12, pp. 2131-2147, Dec. 1989, doi: 10.1109/29.45556.

[6] John R. Hupton, John A. Saghri, "Three-dimensional target modeling with synthetic aperture radar," Proc. SPIE 7798, Applications of Digital Image Processing XXXIII, 77980P (7 September 2010)


## Impact

Accelerate design of SAR imaging systems and reduce time and cost for their development for aerial and terrestrial applications

## Expertise Gained 

Autonomous Vehicles, Automotive, AUV, Image Processing, Signal Processing, Radar Processing


## Project Difficulty

Master's, Doctoral, Bachelor

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/43) to ask/answer questions, comment, or share your ideas for solutions for this project.


## Project Number

211
