**Project 149:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the rewards

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/adas-perception.jpg"  width=600 /></td>
<td><p><h1>Applying Machine Learning for the Development of Physical Sensor Models in Game Engine Environment</h1></p>
<p>Realistic synthetic sensor data will soon eliminate the need of collecting tons of real data for machine learning algorithms. Accelerate this transition by creating a real-time camera distortion model.</p>
</table>

## Motivation

Deep Learning technology has now been adopted in almost every domain with results that have reached and even surpassed the level of accuracy of conventional techniques. However, to reach such a high level of performances, a huge amount of data is needed. 
The development of learning-based detection and classification algorithms for autonomous system applications requires sensor’s data previously collected to use during the training process. For example, one of the challenges in developing algorithms for advanced driver assistance systems (ADAS) is recording sensor signals (e.g. image, video, point cloud, etc.) and labelling them with ground truth data.  MathWorks has developed several virtual sensors to generate synthetic sensor data using game engine.  Machine learning can be used even in this case to expedite and expand the virtual sensor development.
The objective of this project is to automate development of new Game Engine Integration Component and Automated Driving Toolbox™ (ADT) sensors, and refine models of the existing ADT sensors by applying machine learning methods.


## Project Description

This project aims to implement a deep learning-based approach to distort, in real-time, synthetic images with the objective to simulate a stream of camera data.
An implementation of the un-distortion algorithm for an ADAS monocular camera is well known and is available as part of the Computer Vision System Toolbox™ (CVT). (https://www.mathworks.com/help/vision/ug/camera-calibration.html)
Implementation of a distortion algorithm is quite challenging because it requires solving cubic or sextic level equations for every pixel of the image, making it unsuitable for real-time applications.  The objective of this project is to adopt a machine learning technique (an example could be GANs, i.e. Generative Adversarial Networks) for developing a model of the physical camera with distortion able to output data in real-time.

Suggested steps:

1.	From the Unreal Game Engine, collect undistorted images using the Unreal Engine Scenario Simulation in Simulink® (https://www.mathworks.com/help/driving/unreal-engine-scenario-simulation.html)
2.	Obtain a second set of images by distorting the previously collected ones by solving the cubic equations from the CVT (https://www.mathworks.com/help/vision/ug/camera-calibration.html) for undistorted pixels (x, y). Both sets of images will be necessary to train your Neural Network.
3.	Train the Generative Adversarial Network or your preferred network architecture using the Deep Learning Toolbox™ (https://www.mathworks.com/help/deeplearning/ug/train-generative-adversarial-network.html)
4.	Deploy the model into a simulated environment, test the correctness of the output, and process time against the distortion method based on cubic equations.


## Background Material

- [Simulation 3D Camera](https://www.mathworks.com/help/driving/ref/simulation3dcamera.html) (the distortion model used in this block works only for low distortion lens)
- [Computer Vision Toolbox](https://www.mathworks.com/help/vision/index.html?s_tid=CRUX_lftnav)
- [Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
- [How to Design and Train Generative Adversarial Networks (GANs)](https://www.mathworks.com/videos/how-to-design-and-train-generative-adversarial-networks-gans-1583904310687.html)

## Impact

Reduce development efforts of autonomous vehicles and robots.

## Expertise Gained

Artificial Intelligence, Autonomous Driving, Computer Vision, Deep Learning, Machine Learning, Modeling and Simulation, Neural Networks

## Project Difficulty

Master’s level

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/15) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[iklimchy](https://github.com/iklimchy)

## Project Number

149
