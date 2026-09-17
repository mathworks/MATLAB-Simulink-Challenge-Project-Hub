Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Face%20Detection%20and%20Human%20Tracking%20Robot&tfa_2=214)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Face%20Detection%20and%20Human%20Tracking%20Robot&tfa_2=214)</strong> to **submit** your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/HumanTrackingRobot.png"  width=400 /></td>
<td><p><h1>Face Detection and Human Tracking Robot</h1></p>
<p> Design and implement a real time autonomous human tracking robot on Microchip&reg; FPGA/SoC and MCU hardware.</p>
</table>

## Motivation

Human-robot interaction is important in many computer vision applications, including activity recognition, automotive safety, smart home security applications and surveillance. 
The task of a robot is to be a useful assistant to help people with their work. The robot must be able to interact with humans and to communicate well. For this condition, human face tracking system becomes the main requirement for vision system in this type of robots. Face detection can increase the Robot's ability for Human-Robot Interaction. Detecting and tracking human automatically with a sensor or an algorithm is a challenging problem due to the wide variety of positions, complexity of the system, and in the end a detailed optimization problem. This process involves extracting, selecting the best features and then tracking. In this project, you will explore, design and test to finding the optimal algorithm for face detection and tracking.


## Project Description

Design and implement a user friendly, real time autonomous human tracking robot using Deep Learning technology deployed on Microchip hardware. The compute-intensive face detection runs on the [PolarFire&reg; SoC Video Kit](https://www.microchip.com/en-us/development-tool/mpfs250-video-kit), which combines a RISC-V&reg; application processor with FPGA fabric and the CoreVectorBlox&trade; neural network accelerator, while the real-time motion control of the robot runs on an [ATSAME70-XULT](https://www.microchipdirect.com/dev-tools/DM320113) Arm&reg; Cortex&reg;-M7 board.

The face detection algorithm will be designed using [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html) and [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html). The video pre-processing pipeline that feeds the network will be modelled with [Vision HDL Toolbox™](https://www.mathworks.com/products/vision-hdl.html) and implemented in the FPGA fabric with [HDL Coder™](https://www.mathworks.com/products/hdl-coder.html) through the [HDL Coder Support Package for Microchip FPGA and SoC Devices](https://www.mathworks.com/matlabcentral/fileexchange/106100-hdl-coder-support-package-for-microchip-fpga-and-soc-devices), which drives the Microchip Libero&reg; SoC Design Suite automatically. The tracking controller will be generated for the ATSAME70-XULT with [Embedded Coder&reg;](https://www.mathworks.com/products/embedded-coder.html) using [MPLAB&reg; Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu). Finally, a workflow that demonstrates Deep Learning based face detection and tracking on Microchip silicon will be developed.

Suggested steps
1.	Train or fine-tune a face detection network in MATLAB&reg; and validate it offline on recorded video. Look at these references to get started:
    - [Getting Started with YOLO v4](https://www.mathworks.com/help/vision/ug/getting-started-with-yolo-v4.html)
    - [Face Detection and Tracking Using Live Video Acquisition](https://www.mathworks.com/help/vision/ug/face-detection-and-tracking-using-live-video-acquisition.html)
2.	Model the camera-to-display video pipeline (colour space conversion, resizing, frame buffering, overlay of the detection box) with Vision HDL Toolbox and target the PolarFire SoC FPGA fabric with HDL Coder. Refer to the [PolarFire SoC Video Kit Reference Design](https://github.com/polarfire-soc/polarfire-soc-video-kit-reference-design) to understand the kit's camera, memory, and display interfaces, and to [Microchip FPGA and SoC Support from HDL Coder](https://www.mathworks.com/hardware-support/microchip-hdl-coder.html) for the targeting workflow.
3.	Prepare the trained network for the CoreVectorBlox accelerator: quantize it to INT8 with the [Deep Learning Toolbox Model Quantization Library](https://www.mathworks.com/matlabcentral/fileexchange/64072-deep-learning-toolbox-model-quantization-library), export it with [exportNetworkToTensorFlow](https://www.mathworks.com/help/deeplearning/ref/exportnetworktotensorflow.html), convert it to a quantized INT8 `.tflite` model and compile it with the [VectorBlox SDK](https://github.com/Microchip-Vectorblox/VectorBlox-SDK). Look at the [VectorBlox SoC Video Kit Demo](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo) as a reference — it already runs face detection and recognition on live video on this exact kit and documents how to add your own model.
4.	Design the human tracking and drive controller in Simulink&reg; and deploy it to the ATSAME70-XULT using [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu). Drive the motors through an Arduino&reg;-compatible motor driver shield (the ATSAME70-XULT exposes an Arduino MEGA shield connector), a mikroBUS&trade; Motor Driver Click board, or a higher-power controller such as the [ODrive S1](https://shop.odriverobotics.com/products/odrive-s1). Use Simulink external mode for live tuning of the control gains and [processor-in-the-loop (PIL)](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html) to verify that the generated code behaves like the model.
5.	Establish the link that carries the detected human position from the PolarFire SoC to the ATSAME70-XULT (for example UART, SPI, or Ethernet) and define the message format between the two boards.
6.	After getting the coordinates of the human, the robot should move towards him/her and stop at a pre-defined distance.  
7.	The entire system should now track and move towards the human as an when they change their location. 


## Required Hardware

This project must be implemented on Microchip hardware.

Face detection:
- [PolarFire SoC Video Kit (MPFS250-VIDEO-KIT)](https://www.microchip.com/en-us/development-tool/mpfs250-video-kit)

Tracking and drive:
- [ATSAME70-XULT Xplained Ultra Evaluation Kit](https://www.microchipdirect.com/dev-tools/DM320113)
- An Arduino-compatible motor driver shield (for the Arduino MEGA shield connector on the ATSAME70-XULT), a mikroBUS Motor Driver Click board, or a motor controller such as the [ODrive S1](https://shop.odriverobotics.com/products/odrive-s1)
- Motors, wheels, and chassis appropriate for the robot you design

Microchip software:
- [Libero SoC Design Suite](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/libero-software-later-versions) (installed together with the HDL Coder support package)
- [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) and an [MPLAB XC Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)


## Background Material

AI and computer vision:
- [Computer Vision Toolbox](https://www.mathworks.com/products/computer-vision.html)
- [Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
- [Deep Learning Toolbox Examples](https://www.mathworks.com/help/deeplearning/examples.html)
- [Getting Started with YOLO v4](https://www.mathworks.com/help/vision/ug/getting-started-with-yolo-v4.html)
- [Face Detection and Tracking Using Live Video Acquisition](https://www.mathworks.com/help/vision/ug/face-detection-and-tracking-using-live-video-acquisition.html)
- [Quantization, Projection, and Pruning of Deep Neural Networks](https://www.mathworks.com/help/deeplearning/quantization.html)
- [Deep Learning Toolbox Model Quantization Library](https://www.mathworks.com/matlabcentral/fileexchange/64072-deep-learning-toolbox-model-quantization-library)
- [exportNetworkToTensorFlow](https://www.mathworks.com/help/deeplearning/ref/exportnetworktotensorflow.html)

Targeting Microchip FPGAs, SoCs, and MCUs:
- [Microchip Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip.html)
- [Microchip FPGAs and SoCs with MATLAB and Simulink](https://www.mathworks.com/solutions/fpga-asic-soc-development/microchip.html)
- [Microchip FPGA and SoC Support from HDL Coder](https://www.mathworks.com/hardware-support/microchip-hdl-coder.html)
- [HDL Coder Support Package for Microchip FPGA and SoC Devices](https://www.mathworks.com/matlabcentral/fileexchange/106100-hdl-coder-support-package-for-microchip-fpga-and-soc-devices)
- [Microchip dsPIC, PIC32, and SAM Controller Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip-dspic.html)
- [MPLAB Device Blocks for Simulink (dsPIC, PIC32 and SAM MCU)](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu)
- [Microchip MPLAB Discover: MATLAB and Simulink Models](https://mplab-discover.microchip.com/v2/category/com.microchip.other-more/com.microchip.matlab.project)
- [Processor-in-the-Loop (PIL) verification](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html)
- [Simulink external mode with Microchip MCUs (video)](https://www.youtube.com/watch?v=wuzLmORk1M0)

Microchip hardware and reference designs:
- [PolarFire SoC Video Kit](https://www.microchip.com/en-us/development-tool/mpfs250-video-kit)
- [PolarFire SoC Video Kit Reference Design](https://github.com/polarfire-soc/polarfire-soc-video-kit-reference-design)
- [VectorBlox SoC Video Kit Demo](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo)
- [VectorBlox SDK](https://github.com/Microchip-Vectorblox/VectorBlox-SDK)
- [ATSAME70-XULT Xplained Ultra Evaluation Kit](https://www.microchipdirect.com/dev-tools/DM320113)
- [ODrive S1 motor controller](https://shop.odriverobotics.com/products/odrive-s1)


## Impact

Leverage embedded AI accelerators and deep learning to advance face detection algorithms for impacting human safety and security.

## Expertise Gained 

Artificial Intelligence, Computer Vision, Robotics, Deep Learning, Embedded AI, Human-Robot Interaction, Mobile Robots, Modeling and Simulation, Machine Learning, FPGA and SoC Design, Hardware-Software Co-Design, Embedded Systems, Image Processing, Control

## Suggested MathWorks Products

- [MATLAB](https://www.mathworks.com/products/matlab.html) and [Simulink](https://www.mathworks.com/products/simulink.html)
- [Computer Vision Toolbox](https://www.mathworks.com/products/computer-vision.html) and [Image Processing Toolbox](https://www.mathworks.com/products/image-processing.html)
- [Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
- [Vision HDL Toolbox](https://www.mathworks.com/products/vision-hdl.html)
- [HDL Coder](https://www.mathworks.com/products/hdl-coder.html) — with the [HDL Coder Support Package for Microchip FPGA and SoC Devices](https://www.mathworks.com/matlabcentral/fileexchange/106100-hdl-coder-support-package-for-microchip-fpga-and-soc-devices) for the PolarFire SoC FPGA fabric
- [Fixed-Point Designer](https://www.mathworks.com/products/fixed-point-designer.html)
- [Embedded Coder](https://www.mathworks.com/products/embedded-coder.html), [Simulink Coder](https://www.mathworks.com/products/simulink-coder.html), and [MATLAB Coder](https://www.mathworks.com/products/matlab-coder.html) — required by [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu) for the ATSAME70-XULT, and by the HDL Coder support package for the RISC-V side of the PolarFire SoC
- [Stateflow](https://www.mathworks.com/products/stateflow.html) for the supervisory logic of the robot
- Optional: [HDL Verifier](https://www.mathworks.com/products/hdl-verifier.html) for FPGA-in-the-loop and HDL cosimulation of the video pipeline, [Navigation Toolbox](https://www.mathworks.com/products/navigation.html) or [Robotics System Toolbox](https://www.mathworks.com/products/robotics.html) for the motion planning

Note that MathWorks does not ship an Embedded Coder hardware support package for Microchip MCUs; the peripheral blocks, scheduler, and one-click build/program workflow come from Microchip's own [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu), which requires Embedded Coder, Simulink Coder, and MATLAB Coder.

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/45) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

214
