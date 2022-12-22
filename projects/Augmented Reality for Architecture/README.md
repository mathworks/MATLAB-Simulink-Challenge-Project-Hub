**Project 240:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ar_image.png"  width=500 /></td>
<td><p><h1>Augmented Reality for Architecture</h1></p>
<p>Develop an augmented reality system to enhance a photo or video of a 2D architectural floor plan printed on paper with a virtual 3D representation of the structure. </p>
</table>

## Motivation

Augmented reality (AR) combines the real world with computer generated content, often in an interactive way. Newer cell phones, VR headsets and even glasses now have some AR capabilities, and AR has been used for gaming, design, art, utility, and more. As companies strive to improve their sensors, display and computing hardware capabilities, AR will become increasingly commonplace and find new and exciting uses in the world. 

## Project Description

This project aims to bring to life architectural drawing using the [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html). A live video stream of a 2D floor plan drawn or printed on paper will be processed and augmented with a 3D representation of the structure. 

Suggested steps: 

- Print or draw a floor plan consisting of line segments that represent walls onto a flat sheet of paper. 

- Record a video of the floor plan, moving the camera to view it from different angles. 

- Get the camera calibration parameters using the [Camera Calibrator App](https://www.mathworks.com/help/vision/ref/cameracalibrator-app.html). 

- Determine the pose of the floor plan using either known features (e.g. [AprilTag](https://www.mathworks.com/help/vision/ref/readapriltag.html)) or [detected features](https://www.mathworks.com/help/vision/feature-detection-and-extraction.html). 

- Detect the relevant floor plan features (e.g., lines for walls). 

- Augment the video with a 3D representation of the features and correct the visualization to match the perspective from the current pose of the camera. 

- Try running your algorithm in real-time on an incoming video feed from a webcam.  

Advanced work: 

- Use existing video features to estimate pose, rather than requiring a known added feature such as the AprilTag. 

- Include additional information in the floor plan, e.g., markers for windows, doors, furniture, colors, etc. and augment the 3D representation to show it. 

- Render features that obscure others with transparency. 

- Automatically adjust the colors of the rendered features to better match the lighting of the environment. 

- Automatically measure and display the lengths of walls with a scaling factor. 

- Compile and run in real-time on a cell phone or other mobile device.  

## Background Material

Suggested readings:

[1] Marco Schumann et al. [Evaluation of augmented reality supported approaches for product design and production processes.](https://www.sciencedirect.com/science/article/pii/S2212827120314402) Procedia CIRP 2021. 

[2] Georgiou, T., Liu, Y., Chen, W. et al. [A survey of traditional and deep learning-based feature descriptors for high dimensional data in computer vision](https://link.springer.com/article/10.1007/s13735-019-00183-w/?tag=dvside-21#citeas). Int J Multimed Info Retr 2020. 

Useful links:

[Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html) 

[Feature Detection and Extraction](https://www.mathworks.com/help/vision/feature-detection-and-extraction.html) 

[Augmented Reality using AprilTag markers](https://www.mathworks.com/help/vision/ug/augmented-reality-using-apriltag-markers.html) 

[houhglines (Line detection in an image)](https://www.mathworks.com/help/images/ref/houghlines.html) 

## Impact

Develop a proof-of-concept augmented reality system to aid in architectural design. 

## Expertise Gained 

Computer Vision, Image Processing, Sensor Fusion and Tracking


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/76) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

240
