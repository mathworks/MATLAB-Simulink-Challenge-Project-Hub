
Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Detection%20and%20Visualization%20of%20CO2%20Concentration%20Using%20Hyperspectral%20Satellite%20Data&tfa_2=251)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Detection%20and%20Visualization%20of%20CO2%20Concentration%20Using%20Hyperspectral%20Satellite%20Data&tfa_2=251)</strong> to  **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/CO2.jpg"  width=500 /></td>
<td><p><h1>Detection and Visualization of CO2 Concentration Using Hyperspectral Satellite Data</h1></p>
<p>Develop a CO2 detection algorithm using hyperspectral images and visualize the results geospatially.</p>
</table>

## Motivation

The detection and monitoring of greenhouse gases, particularly carbon dioxide (CO2), are crucial for understanding and combating climate change. CO2 is a significant contributor to global warming, and its concentration in the atmosphere has been rising due to human activities such as fossil fuel combustion and deforestation. Monitoring CO2 levels helps scientists and policymakers make informed decisions to mitigate its impact. Companies and research institutions are investing in advanced technologies, such as hyperspectral imaging, to accurately detect and analyze CO2 concentrations. Hyperspectral data from satellites provides comprehensive spectral information that can be used to identify and quantify various gases in the atmosphere.

## Project Description

Process satellite hyperspectral data to detect areas with high concentrations of CO2 and visualize this information on a world map using [Hyperspectral Imaging Library for Image Processing Toolbox™](https://in.mathworks.com/help/images/hyperspectral-image-processing.html) and the [Mapping Toolbox™](https://www.mathworks.com/help/map/index.html?). Explore advanced techniques to detect CO2 concentration and/or different types of gases and visualize the results with geospatial information.

Suggested steps:
1.	**Data Acquisition:** Download hyperspectral datasets from relevant sources such as Landsat (you can download a sample Landsat dataset from our server, as shown in this [example](https://www.mathworks.com/help/images/find-regions-multispectral-georeference.html), but for the complete dataset use the USGS [EarthExplorer](https://earthexplorer.usgs.gov/)), or [AVIRIS](https://aviris.jpl.nasa.gov/data/get_aviris_data.html), or any other source of your choice.
2.	**Data Preprocessing:** Load the hyperspectral data into MATLAB using the [hypercube function]( https://www.mathworks.com/help/images/ref/hypercube.html). Perform any necessary preprocessing steps such as noise reduction and [Atmospheric Correction](https://www.mathworks.com/help/images/hyperspectral-data-correction.html) to convert radiance to reflectance.
3.	**CO2 Detection:** Implement algorithms to detect CO2 concentration from hyperspectral data. Use spectral indices or other relevant methods to quantify CO2 levels. Techniques for estimating CO2 emission from hyperspectral images include:
    - **Cluster-Tuned Matched Filter (CTMF)**
      1.    Clustering: Perform [k-means clustering](https://www.mathworks.com/help/stats/kmeans.html) on the hyperspectral data to group pixels with similar spectral properties.
      2.    Matched Filter Design: For each cluster, design a [matched filter](https://www.mathworks.com/help/phased/ug/matched-filtering.html) tuned to the specific spectral signature of CO2.
      3.    Filter Application: Apply the matched filters to the hyperspectral data to detect CO2 anomalies.
    - **Joint Reflectance and Gas Estimator (JRGE)** 
      1.    Initial Estimation: Use a [smoothing spline estimator](https://www.mathworks.com/help/curvefit/smoothing-splines.html) to obtain an initial estimate of surface reflectance.
      2.    Gas Density Estimation: Estimate gas densities based on the initial reflectance estimate
      3.    Iterative Refinement: Iteratively refine the estimates of reflectance and gas densities until convergence.
    - **Spectral Fitting Algorithm**
      1.	Radiative Transfer Model: Simulate spectra using a radiative transfer model that includes CO2 absorption features.
      2.	Spectral Matching: Match the observed spectra from the real data to the simulated spectra using [spectral matching](https://in.mathworks.com/help/images/ref/spectralmatch.html) techniques.
      3.	CO2 Quantification: Quantify CO2 levels based on the best match between observed and simulated spectra.
    - **Continuum Interpolated Band Ratio (CIBR)**
      1.   Absorption Feature Identification: Identify the specific absorption bands of CO2 in the hyperspectral data.
      2.   Continuum Interpolation: Perform [continuum](https://in.mathworks.com/help/images/ref/removecontinuum.html) interpolation to estimate the depth of the CO2 absorption features.
      3.   Band Ratio Calculation: Calculate the band ratio for the CO2 absorption features.
      4.   CO2 Concentration Estimation: Estimate CO2 concentration based on the calculated band ratios. 
4.	**Result Analysis:** Analyze the final estimates to quantify CO2 concentrations and identify regions with elevated CO2 levels
5.	**Visualization:** Visualize the detected CO2 concentration, including geospatial information, on a world map using the Mapping Toolbox (See this [example](https://www.mathworks.com/help/images/find-regions-multispectral-georeference.html)) .

Project variations:

- Detect other type of gas

Advanced project work:

- Visualize the results for multiple gases on a world map.


## Background Material

-	[Image Processing Toolbox™ Hyperspectral Imaging Library]( https://www.mathworks.com/help/images/hyperspectral-image-processing.html)
-	[Statistics and Machine Learning Toolbox](https://www.mathworks.com/help/stats/index.html)
-	[Mapping Toolbox](https://www.mathworks.com/help/map/index.html?s_tid=CRUX_lftnav)
-	[Find Regions in Spatially Referenced Multispectral Image – Example](https://www.mathworks.com/help/images/find-regions-multispectral-georeference.html)
-	[AVIRIS Dataset](https://aviris.jpl.nasa.gov/data/get_aviris_data.html)
-	[Landsat Dataset]( https://www.usgs.gov/landsat-missions)

Suggested readings:

[1] Sejal N. Tandel, Alka J. Patel, “Techniques for Measuring Atmospheric CO2 using Hyper Spectral Imaging” International Journal For Technological Research In Engineering Volume 4, Issue 8, April-2017

[2] Philip E. Dennison, Andrew K. Thorpe, Eric R. Pardyjak, Dar A. Roberts, Yi Qi, Robert O. Green, Eliza S. Bradley, Christopher C. Funk, “High spatial Resolution mapping of elevated atmospheric carbon dioxide using airborne imaging spectroscopy: Radiative transfer modeling and power plant plume detection”, Remote Sensing Environment 139 (2013) 116-129. 

[3] R. Marion, R. Michel and C. Faye, “Measuring Trace Gases in Plumes From Hyperspectral Remotely Sensed Data”, IEEE TRANSACTIONS ON GEOSCIENCE AND REMOTE SENSING, VOL. 42, NO. 4 APRIL 2004. 

[4] Robert O. Green, “Measuring the Spectral Expression of Carbon Dioxide in the Solar Reflected Spectrum with AVIRIS”, Tenth Annual JPL Airborne Earth Science Workshop, 2001. 

[5] C Spinetti, V Carrere, M F Buongiorno, A J Sutton, and T Elias, “Carbon Dioxide of Pu’uO’o Volcanic Plume at Killauea Retrieved by AVIRIS Hyperspectral Data”, Remote Sensing of Environment 112(2008)3192-3199.

[6] Romaniello, Vito, Claudia Spinetti, Malvina Silvestri, and Maria Fabrizia Buongiorno. 2021. "A Methodology for CO2 Retrieval Applied to Hyperspectral PRISMA Data" Remote Sensing 13, no. 22: 4502. https://doi.org/10.3390/rs13224502

[7] Kairui Li, Hong Fan, Peiwen Yao, “Estimating carbon emissions from thermal power plants based on thermal characteristics”, International Journal of Applied Earth Observation and Geoinformation, Volume 128, 2024, 103768, ISSN 1569-8432, https://doi.org/10.1016/j.jag.2024.103768.

[8] Le Zhang, Jinsong Wang, Zhiyong An, “Classification method of CO2 hyperspectral remote sensing data based on neural network” , Computer Communications, Volume 156, 2020, Pages 124-130, ISSN 0140-3664, https://doi.org/10.1016/j.comcom.2020.03.045.


## Impact

Enable precise CO2 monitoring for effective climate action. 

## Expertise Gained 

Sustainability and Renewable Energy, Image Processing, Machine Learning, Signal Processing

## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/105) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

251
