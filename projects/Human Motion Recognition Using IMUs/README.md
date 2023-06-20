**Project 232:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/motionRecognition.png"  width=500 /></td>
<td><p><h1>Human Motion Recognition Using IMUs </h1></p>
<p>Use Deep Learning and Inertial Measurement Units (IMU) data to recognize human activities and gestures.</p>
</table>

## Motivation

IMUs are everywhere. We all have an IMU in our phones, and some in some of our watches. 
With modern Machine Learning and Deep Learning techniques we can use body-worn IMUs to detect if someone is sleeping, walking, or running. Recent work has taken this further to determine full body pose and classify complex activities such as gestures.

Motion recognition has obvious applications to consumer electronics in wearables,  but also is useful in the medical and manufacturing sectors. With these techniques we can determine if a person’s gait is deteriorating because of a medical issue, or if a factory worker is moving in a way likely to cause an injury.


## Project Description

This project focuses on simulating and detecting different categories of human motion using an IMU data along with Machine Learning and Deep Learning techniques. 

Suggested steps:
1.	Record signals from an IMU strapped to the body. You can do this using the [Arduino Support Package for MATLAB](https://www.mathworks.com/hardware-support/arduino-matlab.html) or with the MATLAB Mobile App ([IoS](https://apps.apple.com/us/app/matlab-mobile/id370976661), [Android](https://play.google.com/store/apps/details?id=com.mathworks.matlabmobile&amp;hl=en_US&amp;gl=US)) on your phone. Be sure to follow all safety precautions if attaching electronics to the body.
2.	Alternatively, use an open-source dataset  for body worn IMUs. There are several public datasets for Human Activity Recognition (HAR) including
a.	[HARTH Dataset](https://github.com/ntnu-ai-lab/harth-ml-experiments)
b.	[Human Activity Recognition Using Smartphones Data Set](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones)
3.	Use [Statistics and Machine Learning Toolbox]() and/or [Deep Learning Toolbox]() to classify categories of human motion in the data. Refer to [Human Activity Learning](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/submissions/50232/versions/9/previews/MachineLearningMadeEasy_FEX/HumanActivity/html/Human_Activity_Learning.html) for an example. Use this as a starting point and see if you can improve the accuracy of the classification using other datasets or a different technique. Test your classifier with data captured using MATLAB Mobile.
Project Variations:
1.	Use several imuSensors worn on different parts of the body (or alternatively, use a dataset with several  body worn IMUs). Use Deep Learning and Machine Learning to reconstruct more complex motions. Refer to [IMU-based Human Motion Capture Systems](https://ps.is.mpg.de/research_projects/imu-mocap) for ideas. 


Advanced project work:
1.	Use the imuSensor (in the Navigation Toolbox and Sensor Fusion and Tracking Toolbox) to recreate your recorded signals. Build a Human Motion Model (as in the diagram below) to drive the imuSensor object to mimic the IMU signals you used to train your classification algorithm in the first part of the project. To build the Human Motion Model, consider using the [OpenSim](https://simtk.org/projects/opensim/)  modeling framework, or alternatively train an AI network to produce the desired imuSensor input . 
2.	Run your AI classification algorithms from the first part of the project on real hardware. Use this hardware to control MATLAB using the activities you’re AI algorithm can recognize. For example, [in this video](https://www.youtube.com/watch?v=RlomRYsP7Rg&gt;) gestures are used to control MATLAB. 

## Background Material

-  Navigation Toolbox: [Introduction to Simulating IMU Measurements](https://www.mathworks.com/help/nav/ug/introduction-to-simulating-imu-measurements.html)
-  [UC Irvine Human Activity Recognition Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones)
- [OpenSim project](https://simtk.org/projects/opensim/)


## Impact

Enable the next generation of wearable electronic devices with motion recognition. 

## Expertise Gained 

Artificial Intelligence, Deep Learning, Embedded AI, Neural Networks, Signal Processing

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/66) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

232
