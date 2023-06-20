**Project 187:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/utilities-energy-image-processing-and-deep-le.jpg"  width=500 /></td>
<td><p><h1>Deep Learning for UAV Infrastructure Inspection</h1></p>
<p> Automate the process of infrastructure inspection using unmanned aerial vehicles and deep learning.</p>
</table>

## Motivation

Infrastructure inspection (power lines, oil/gas pipelines, bridges, buildings, etc.) is a vital and safety-critical task, but the process can be dangerous and requires a lot of manual work. UAVs provide a tantalizing opportunity to automate this process, detect infrastructure faults early, and reduce risk to human inspectors.

Detecting infrastructure faults in images captured from the drone is still mostly a manual process and requires a trained operator on-site. The next big challenge is to add intelligence to UAVs to recognize problems themselves through advanced computer vision and machine learning techniques.

## Project Description

Work with [UAV Toolbox](https://www.mathworks.com/products/uav.html), [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html?s_tid=srchtitle), and [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html) to train a deep neural network to recognize infrastructure faults. Use simulation to rapidly train your network. Then use transfer learning to enhance detection performance on real-world camera data.

**Suggested Steps**:
1. Pick an application area and what kind of fault you want to detect, e.g., cracks in bridges, leaks in oil pipelines, etc.
2. Use Unreal Engine to construct a representative environment that you can use to simulate the chosen fault. You can check the [Unreal Marketplace](https://unrealengine.com/marketplace/en-US/store) to see if you can find relevant assets and scenes as a starting point.
3. Use [UAV Toolbox](https://www.mathworks.com/products/uav.html) to capture a large set of camera images (color images) and annotated images (images with object labels) from the Unreal simulation. You can either fly the UAV along a fixed trajectory or manually change the pose of the UAV to capture images from many different orientations. See the background material below for good example starting points. 
4. When you save images, capture both normal scenarios (no infrastructure faults) as well as scenarios with known problems. Automate this data collection as much as possible.
5. Use Deep Learning Toolbox and Computer Vision Toolbox to train a deep learning network to detect the infrastructure fault.
6. Verify in simulated test scenarios that your trained network can detect faults. Calculate the precision and efficiency of your network. 

**Advanced project work**:
* Go from simulated to real images. Use online data sets for infrastructure faults or collect data from a physical UAV. This dataset can be much smaller than the simulated dataset. Use [transfer learning](https://www.mathworks.com/help/deeplearning/gs/get-started-with-transfer-learning.html) to ensure your network works well on real-world data.
* Deploy your trained network to a physical drone and run it during the UAV flight. For example, you can deploy the network to an NVIDIA Jetson with MathWorks tools. See the [GPU Coder™ Support Package for NVIDIA GPUs](https://www.mathworks.com/matlabcentral/fileexchange/68644-gpu-coder-support-package-for-nvidia-gpus?s_tid=srchtitle). 
* Extend your network to also use data from other sensors, e.g., lidar, to increase the recognition performance. See the examples in [Lidar Toolbox™](https://www.mathworks.com/products/lidar.html).


## Background Material

* [Simulate Simple Flight Scenario in Unreal Engine](https://www.mathworks.com/help/uav/ug/simulate-a-simple-flight-scenario-and-sensor-in-3d-environment.html)
* [Depth and Semantic Segmentation Visualization Using Unreal Engine](https://www.mathworks.com/help/uav/ug/depth-and-semantic-visual-with-ue4.html)
* [Create Simple Image Classification Network Using Deep Network Designer](https://www.mathworks.com/help/deeplearning/gs/create-simple-image-classification-network-using-deep-network-designer.html)
* [Bridge Crack Dataset](https://github.com/maweifei/Bridge_Crack_Image_Data)
* [Road Crack Image Database](https://github.com/cuilimeng/CrackForest-dataset)
* [Deploying a Deep Learning Network on NVIDIA Jetson Using GPU Coder](https://www.mathworks.com/videos/deploying-a-deep-learning-network-on-nvidia-jetson-using-gpu-coder-1506357891312.html)


## Impact

Enhance safety and speed of infrastructure inspection across a wide range of industries.

## Expertise Gained 

Computer Vision, Drones, Artificial Intelligence, Robotics, UAV, SLAM, Deep Learning


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/21) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[mw-rpillat](https://github.com/mw-rpillat)

## Project Number

187
