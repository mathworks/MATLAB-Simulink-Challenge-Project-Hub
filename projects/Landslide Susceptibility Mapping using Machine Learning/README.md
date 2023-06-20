**Project 228:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/landslide.jpg"  width=500 /></td>
<td><p><h1>Landslide Susceptibility Mapping using Machine Learning</h1></p>
<p>Develop a tool to identify and visualize geographical areas susceptible to landslides.</p>
</table>

## Motivation

The [United States Geological Survey (USGS)](https://www.usgs.gov/) reports that the worldwide death toll due to landslides is in the thousands with most fatalities due to rock falls, debris flows, or volcanic debris flows. A Landslide Susceptibility Map (LSM) is an effective visualization for identifying the relative likelihood of future landslides in low and high-risk landslide regions. These maps can aid with understanding the potential for future landslides that can have devastating impacts on cites, power grids, transportation, and most importantly people.

## Project Description

Develop a complete MATLAB-based example that generates a Landslide Susceptibility Map as seen in [1]. The example would obtain the historical landslide data e.g., distance from roads, distance from geological faults, distance from water streams, land use type, etc. and apply the three-stage methodology (outlined in Figure 2 of [1]) to generate and visualize a geographic map,
color-coded with high and low landslide risk regions (as see in Figures 5 and 6  of [1]).

Suggested steps:
1.	Identify the regions for which required landslide data exists e.g., Muş, Turkey, Bandar Torkaman, Iran, etc.
2.	Fetch the required training data. You can adopt the tool [here](https://github.com/jeffreyevans/GradientMetrics) as per Reference [1].
3.	Implement the three-stage methodology as seen in Figure 2 of [1].
	1.	Pre-process spatial data using MATLAB®
	2.	Develop a cascade neural network model (cascadeforwardnet using trainlm training) using the [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html)
	3.	Use the [Mapping Toolbox™](https://www.mathworks.com/products/mapping.html) to generate the risk map using a total of 24 variables 

## Background Material

References:
- [1] [Abujayyab, Sohaib K. M. and Azlan Saleh. “Landslides Risk Prediction Using Cascade Neural Networks Model at Muş In Turkey.” (2020).](https://iopscience.iop.org/article/10.1088/1755-1315/540/1/012081/pdf).
- [2] [Vakhshoori, Vali, Hamid R. Pourghasemi, Mohammad Zare, and Thomas Blaschke. 2019. "Landslide Susceptibility Mapping Using GIS-Based Data Mining Algorithms" Water 11, no. 11: 2292. https://doi.org/10.3390/w11112292](https://www.mdpi.com/2073-4441/11/11/2292/pdf)

Examples and tutorials:
- ArcGIS Geomorphometry and Gradient Metrics ([Documentation](https://evansmurphy.wixsite.com/evansspatial/arcgis-gradient-metrics-toolbox), [GitHub repository](https://github.com/jeffreyevans/GradientMetrics)) 
- [What is a Convolutional Neural Network?](https://www.mathworks.com/discovery/convolutional-neural-network-matlab.html)

## Impact

Identify areas that are at risk for landslides to help mitigate devastating impacts on people and infrastructure.

## Expertise Gained 

Sustainability and Renewable Energy, Machine Learning


## Project Difficulty

Bachelor

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/62) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

228
