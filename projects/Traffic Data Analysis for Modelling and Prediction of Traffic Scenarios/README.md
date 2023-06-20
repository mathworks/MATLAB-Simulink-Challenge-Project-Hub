**Project 222:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/trafficanalysis.jpg"  width=500 /></td>
<td><p><h1>Traffic Data Analysis for Modeling and Prediction of Traffic Scenarios </h1></p>
<p>Analyze real-world traffic data to understand, model, and predict human driving trajectories. </p>
</table>

## Motivation

The past few years, the world has been overwhelmed with large quantities of data from ubiquitous sources with the hope that AI can one day leverage them to evolve. With the autonomous driving industry booming, an increasing number of vehicle trajectories datasets are being recorded to help engineers and researchers improve autonomy algorithms and bring traffic simulation tools to the next level of realism. Therefore, the need arises to establish data processing and analysis methodologies using machine learning techniques that would efficiently leverage the growing traffic data. 

## Project Description

Work with [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) and  [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) to process and analyze real-world vehicle trajectories data, such as the [Next Generation Simulation (NGSIM) Vehicle Trajectories](https://data.transportation.gov/Automobiles/Next-Generation-Simulation-NGSIM-Vehicle-Trajector/8ect-6jqj) data provided by the U.S. Department of Transportation. 

Objective:

Enable decision making in autonomous driving by predicting future vehicle trajectories using deep learning and machine learning algorithms, for example, LSTM neural networks in [2] and [3], and Bayes and decision-tree classifiers in [4].  

Advanced objective: 

Classify the trajectories based on intrinsic attributes (e.g., human driving styles – tired, in a hurry, distracted, aggressive, etc., driving modes – entering the driveway, exiting the driveway, passing a car, trailing a car, changing lanes, etc.), using unsupervised learning.

Suggested steps:
1.	Perform literature research prior to starting the work. Suggested readings are provided in the Background Material below. 
2.	Select the dataset(s) you will be using for your analysis. Depending on your analysis objective, consider parameters such as road topology, number of provided vehicle trajectories, measured quantities (position, velocity, acceleration, etc.), any available labels (e.g., type of vehicles, type of maneuver, driving profile, etc.) and more.
3.	Download the vehicle trajectories datasets. Some options are:
	- [Next Generation Simulation (NGSIM) Vehicle Trajectories](https://data.transportation.gov/Automobiles/Next-Generation-Simulation-NGSIM-Vehicle-Trajector/8ect-6jqj) provided by the U.S. Department of Transportation
	- [Dataset of Annotated Car Trajectories (DACT)](https://figshare.com/articles/dataset/DACT_Dataset_of_Annotated_Car_Trajectories/5005289)
4.	Preprocess and visualize the data using MATLAB. The live script [preprocess_visualize_NGSIM_US101data.mlx](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/blob/main/projects/Traffic%20Data%20Analysis%20for%20Modelling%20and%20Prediction%20of%20Traffic%20Scenarios/preprocess_visualize_NGSIM_US101data.mlx) provided in the supporting material preprocesses the NGSIM data captured on US101 highway and visualizes them using Mapping Toolbox. You are encouraged to use this script as a starting point for other datasets. 
5.	[Optional] Visualize and replay the recorded trajectories in the Unreal Engine using [RoadRunner](https://www.mathworks.com/products/roadrunner.html) and Simulink. 
6.	Select the algorithmic solution that best suits your analysis objective, e.g., Bayesian Networks, Long Short-term Memory (LSTM) networks, Clustering (K-means, Hierarchical, etc.), Gaussian mixture models, Support Vector Machines (SVM), etc. 
7.	Separate the data in testing and training datasets.  
8.	Setup the problem formulation: determine the inputs, outputs, required intermediate data that are not directly available in the original datasets, such as information about the preceding cars, etc. 
9.	Use MATLAB and Simulink to design and/or implement an algorithmic solution that uses the data to achieve your analysis objective. You are encouraged to get inspiration from the provided readings. 
10.	Test the approach on the testing datasets and report efficiency.
11.	Document the results, challenges, and potential future work. 


## Background Material

Deep Learning examples:
-	[Time Series Forecasting Using Deep Learning](https://www.mathworks.com/help/deeplearning/ug/time-series-forecasting-using-deep-learning.html)
-	[Long Short-Term Memory (LSTM) discovery page](https://www.mathworks.com/discovery/lstm.html)
-	[Moving Towards Automating Model Selection Using Bayesian Optimization](https://www.mathworks.com/help/stats/towards-automating-model-selection.html)
-	[Guidance for choosing the appropriate clustering method](https://www.mathworks.com/help/stats/choose-cluster-analysis-method.html)
-	[Discover Gene Expression profiles using k-Means Clustering](https://www.mathworks.com/help/bioinfo/ug/gene-expression-profile-analysis.html)

Suggested readings:

[1] He, Zhengbing. "Research based on high-fidelity NGSIM vehicle trajectory datasets: A review." Research Gate (2017): 1-33.

[2] N. Deo and M. M. Trivedi, "Convolutional Social Pooling for Vehicle Trajectory Prediction," 2018 IEEE/CVF Conference on Computer Vision and Pattern Recognition Workshops (CVPRW), Salt Lake City, UT, USA, 2018, pp. 1549-15498, doi: 10.1109/CVPRW.2018.00196.

[3] F. Altché and A. de La Fortelle, "An LSTM network for highway trajectory prediction," 2017 IEEE 20th International Conference on Intelligent Transportation Systems (ITSC), Yokohama, Japan, 2017, pp. 353-359, doi: 10.1109/ITSC.2017.8317913.

[4] Y. Hou, P. Edara and C. Sun, "Modeling Mandatory Lane Changing Using Bayes Classifier and Decision Trees," in IEEE Transactions on Intelligent Transportation Systems, vol. 15, no. 2, pp. 647-655, April 2014, doi: 10.1109/TITS.2013.2285337.

[5] Moosavi, Sobhan, Behrooz Omidvar-Tehrani, and Rajiv Ramnath. “Trajectory Annotation by Discovering Driving Patterns.” Proceedings of the 3rd ACM SIGSPATIAL Workshop on Smart Cities and Urban Analytics. ACM, 2017.

[6] Martinelli, F., Mercaldo, F., Nardone, V., Orlando, A., & Santone, A. (2018). Cluster analysis for driver aggressiveness identification. In ICISSP (pp. 562-569). 

[7] Warren, J., Lipkowitz, J., & Sokolov, V. (2019). Clusters of driving behavior from observational smartphone data. IEEE Intelligent Transportation Systems Magazine, 11(3), 171-180.

[8] Yan, F., Liu, M., Ding, C., Wang, Y., & Yan, L. (2019). Driving style recognition based on electroencephalography data from a simulated driving experiment. Frontiers in psychology, 10, 1254.


## Impact

Contribute to autonomous driving technologies and intelligent transportation research. 

## Expertise Gained 

Big Data, Autonomous Vehicles, Support Vector Machines, Machine Learning, Deep Learning, Automotive


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/54) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

222
