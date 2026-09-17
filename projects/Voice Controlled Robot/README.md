Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Voice%20Controlled%20Robot&tfa_2=30)</strong> to **register** your intent to complete this project.s

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Voice%20Controlled%20Robot&tfa_2=30)</strong> to **submit** your solution to this project and qualify for the rewards.

This project is developed in collaboration with **Microchip Technology Inc.**

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/raspbpi.png"  width=400 /></td>
<td><p><h1>Voice Controlled Robot</h1></p>
<p>Smart devices and robots are nowadays part of our everyday life and human-robot interaction plays a crucial role in this rapidly expanding market.</p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://www.microchip.com/en-us/education/academic-program" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/Microchip-Logo.png" width="300" style="display: block; margin: 0 auto;"><br>
</a>

## Motivation

AI-powered virtual assistants can buy us dinner while a robotic vacuum cleans our home as we seat on the couch talking to our smart TV.
Clearly, our lives are changing and adapting to the omnipresence of these devices. 
The need to interact with such devices, not only at home but also at work and even on the streets, has made ‘human-robot interaction’ a crucial and rapidly increasing field. 
Get prepared to this new trend and for a career in this field by acquiring the skills to build a voiced controlled robot.


## Project Description

Design and program a wheeled robot to respond to voice commands, visually identify specified targets, and navigate around obstacles to reach the target.
Build the robot on Microchip&reg; hardware and design the complete system — voice front end, keyword recognition, mission logic, motion control, and perception — in MATLAB&reg; and Simulink&reg;, then deploy the design to the boards with [Embedded Coder&reg;](https://www.mathworks.com/products/embedded-coder.html) and [MPLAB&reg; Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu).

You will choose one of two voice architectures (see [Required Hardware](#required-hardware) for the kits):

-	**Cloud-based voice control.** The [Timberwolf Dev Kit EV08Z13A](https://www.microchip.com/en-us/development-tool/EV08Z13A) provides a four-microphone MEMS array with hardware beamforming, acoustic echo cancellation, noise reduction, and dynamic range control. The clean far-field audio it produces is streamed to a cloud speech service for recognition. Follow the [EV08Z13A starter guide](https://github.com/MicrochipTech/EV08Z13A) for the board, driver, and Demo Tool/MiTuner setup.
-	**On-device Edge AI keyword spotting.** A Microchip 32-bit MCU/MPU Curiosity kit plus an external I2S or analog microphone runs the keyword spotting network locally, with no network connection. Look at the [Edge Impulse keyword spotting tutorial on Microchip Developer Help](https://developerhelp.microchip.com/xwiki/bin/view/applications/machine-learning/edge-impulse-keyword-spotting/) as a reference for the end-to-end embedded audio AI pipeline on these kits, and compare its results against the network you train yourself in MATLAB.

For the drive base, target identification, and tracking portion, reuse the hardware and workflow described in the [Face Detection and Human Tracking Robot](../Face%20Detection%20and%20Human%20Tracking%20Robot/README.md) project: an [ATSAME70-XULT](https://www.microchipdirect.com/dev-tools/DM320113) Arm&reg; Cortex&reg;-M7 board driving the motors through an Arduino&reg;-compatible motor driver shield, a mikroBUS&trade; Motor Driver Click board, or a controller such as the [ODrive S1](https://shop.odriverobotics.com/products/odrive-s1).

Suggested steps:

1.	**Set the requirements and architecture.** Define the command vocabulary, the maximum acceptable recognition latency, the wake-up behaviour, and how the voice, perception, and motion subsystems are partitioned across the boards. Capture the interfaces (I2S, UART, SPI, PWM, quadrature encoder) you will need on each Microchip kit.
2.	**Build the framework of the vision-guided robot.** Use MATLAB or Simulink to establish a framework of the vision-guided robot, and make sure that if you hand code a target, the robot will search for the target visually and go there. Use [Computer Vision Toolbox™](https://www.mathworks.com/products/computer-vision.html) and [Image Processing Toolbox™](https://www.mathworks.com/products/image-processing.html) for colour-based target identification.
3.	**Collect and label a keyword dataset.** Record your commands (including background noise and non-command speech, so the network can reject them) with the same microphone you will use on the board, and manage the recordings with [audioDatastore](https://www.mathworks.com/help/audio/ref/audiodatastore.html) and the [Audio Labeler](https://www.mathworks.com/help/audio/ref/audiolabeler-app.html) app from [Audio Toolbox™](https://www.mathworks.com/products/audio.html).
4.	**Extract features and train the keyword spotting network.** Compute MFCCs or mel spectrograms with [audioFeatureExtractor](https://www.mathworks.com/help/audio/ref/audiofeatureextractor.html) and train the classifier with [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html). Look at these references:
	-	[Speech Command Recognition Using Deep Learning](https://www.mathworks.com/help/audio/ug/speech-command-recognition-using-deep-learning.html)
	-	[Keyword Spotting in Noise Using MFCC and LSTM Networks](https://www.mathworks.com/help/audio/ug/keyword-spotting-in-noise-using-mfcc-and-lstm-networks.html)
	-	As an alternative to deep learning, extract hand-crafted features and train a classical classifier with [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) — see [Speaker Identification Using Pitch and MFCC](https://www.mathworks.com/help/audio/ug/speaker-identification-using-pitch-and-mfcc.html)
5.	**Shrink the network to fit the MCU.** Convert the feature pipeline and the network to fixed point with [Fixed-Point Designer™](https://www.mathworks.com/products/fixed-point-designer.html) and quantize the weights with the [Deep Learning Toolbox Model Quantization Library](https://www.mathworks.com/matlabcentral/fileexchange/64072-deep-learning-toolbox-model-quantization-library); see [Quantization, Projection, and Pruning of Deep Neural Networks](https://www.mathworks.com/help/deeplearning/quantization.html). Report memory footprint and inference time against the RAM/Flash of the kit you selected.
6.	**Implement your chosen voice front end.**
	-	*Cloud-based route:* configure the Timberwolf beamforming and noise reduction using the tools in the [starter guide](https://github.com/MicrochipTech/EV08Z13A), capture the enhanced I2S/USB audio, and send it to a cloud speech service. In MATLAB you can prototype this with [speechClient](https://www.mathworks.com/help/audio/ref/speechclient.html) from the [Speech2Text support package](https://www.mathworks.com/matlabcentral/fileexchange/65266-speech2text), or call a REST endpoint directly with [webread](https://www.mathworks.com/help/matlab/ref/webread.html)/`webwrite`.
	-	*On-device route:* generate C code for the feature extraction and inference with [MATLAB Coder™](https://www.mathworks.com/products/matlab-coder.html)/Embedded Coder and integrate it in an [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) project, or build the whole audio pipeline in Simulink and deploy it with [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu), which provides the I2S/SPI/UART/ADC peripheral blocks and a multi-tasking scheduler. Use [DSP System Toolbox™](https://www.mathworks.com/products/dsp-system.html) for framing, filtering, and windowing of the microphone stream.
7.	**Pass the recognized command to the robot planner.** Implement the mission logic — wake word, command arbitration, timeouts, and safe-stop behaviour — as a state machine in [Stateflow&reg;](https://www.mathworks.com/products/stateflow.html). At minimum, you should have “return”, “turn left”, “turn right”, “red target”, “blue target” as voice commands.
8.	**Design the motion control and navigation.** Close the wheel-speed loops in Simulink, and use [Robotics System Toolbox™](https://www.mathworks.com/products/robotics.html) or [Navigation Toolbox™](https://www.mathworks.com/products/navigation.html) for path following and obstacle avoidance — see [Pure Pursuit Controller](https://www.mathworks.com/help/nav/ug/pure-pursuit-controller.html). Optionally build a plant model of the robot with [Simscape Multibody™](https://www.mathworks.com/products/simscape-multibody.html) so you can test the controller in closed-loop simulation before touching the hardware.
9.	**Deploy, verify, and tune on the target.** Use Simulink external mode for live plotting and parameter tuning on the board and [processor-in-the-loop (PIL)](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html) to confirm that the generated code matches the model. Refer to [Microchip dsPIC, PIC32, and SAM Controller Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip-dspic.html) for the deployment workflow.
10.	**Connect the whole system and play with it.** Measure end-to-end latency and command recognition accuracy in a real room, with real background noise, and at several distances from the microphone. Compare the cloud-based and on-device options if you have access to both.

Advanced project work:
-	Add speaker identification so the robot only obeys an enrolled user
-	Add a rejection/out-of-vocabulary class and quantify false-trigger rate per hour
-	Estimate power consumption of the voice front end and trade it against recognition accuracy
-	Add a small natural-language layer so compound commands (“turn left then find the red target”) are supported
-	Regression-test the mission logic with [Simulink Test™](https://www.mathworks.com/products/simulink-test.html)


## Required Hardware

This project must be implemented on Microchip hardware.

Voice front end — choose one of the two options:

*Option 1: cloud-based voice control*
-	[Timberwolf Dev Kit EV08Z13A](https://www.microchip.com/en-us/development-tool/EV08Z13A) — note that access to this evaluation board is subject to design approval by Microchip
-	[EV08Z13A starter guide and hardware user guide](https://github.com/MicrochipTech/EV08Z13A)

*Option 2: on-device Edge AI keyword spotting*
-	One of the following kits:
	-	[SAM E54 Curiosity Ultra Development Board (DM320210)](https://www.microchip.com/en-us/development-tool/DM320210) — this is the kit used by the [Edge Impulse keyword spotting tutorial](https://developerhelp.microchip.com/xwiki/bin/view/applications/machine-learning/edge-impulse-keyword-spotting/)
	-	[SAMA7D65 Curiosity Kit (EV63J76A)](https://www.microchip.com/en-us/development-tool/ev63j76a)
	-	[SAMA5D29 Curiosity (EV07R15A)](https://www.microchipdirect.com/dev-tools/EV07R15A)
	-	[PIC32CZ CA90 Curiosity Ultra Development Board (EV16W43A)](https://www.microchip.com/en-us/development-tool/ev16w43a)
	-	[dsPIC33AK512MPS506 Curiosity Nano Evaluation Kit (EV17P63A)](https://www.microchip.com/en-us/development-tool/ev17p63a)
-	An external microphone (I2S or analog)

Drive base and tracking (same as the [Face Detection and Human Tracking Robot](../Face%20Detection%20and%20Human%20Tracking%20Robot/README.md) project):
-	[ATSAME70-XULT Xplained Ultra Evaluation Kit](https://www.microchipdirect.com/dev-tools/DM320113)
-	An Arduino-compatible motor driver shield (for the Arduino MEGA shield connector on the ATSAME70-XULT), a mikroBUS Motor Driver Click board, or a motor controller such as the [ODrive S1](https://shop.odriverobotics.com/products/odrive-s1)
-	Motors, wheels, chassis, and a camera for the target identification part

Microchip software:
-	[MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) and an [MPLAB XC Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)


## Background Material

Speech and keyword spotting:
-	[Speech Command Recognition Using Deep Learning](https://www.mathworks.com/help/audio/ug/speech-command-recognition-using-deep-learning.html)
-	[Keyword Spotting in Noise Using MFCC and LSTM Networks](https://www.mathworks.com/help/audio/ug/keyword-spotting-in-noise-using-mfcc-and-lstm-networks.html)
-	[Train Spoken Digit Recognition Network Using Out-of-Memory Features](https://www.mathworks.com/help/audio/ug/train-spoken-digit-recognition-network-using-out-of-memory-features.html)
-	[Speaker Identification Using Pitch and MFCC](https://www.mathworks.com/help/audio/ug/speaker-identification-using-pitch-and-mfcc.html)
-	[audioFeatureExtractor](https://www.mathworks.com/help/audio/ref/audiofeatureextractor.html), [audioDatastore](https://www.mathworks.com/help/audio/ref/audiodatastore.html), and the [Audio Labeler](https://www.mathworks.com/help/audio/ref/audiolabeler-app.html) app
-	[speechClient](https://www.mathworks.com/help/audio/ref/speechclient.html) and the [Speech2Text support package](https://www.mathworks.com/matlabcentral/fileexchange/65266-speech2text) for cloud speech services
-	[Quantization, Projection, and Pruning of Deep Neural Networks](https://www.mathworks.com/help/deeplearning/quantization.html)
-	[Deep Learning Toolbox Model Quantization Library](https://www.mathworks.com/matlabcentral/fileexchange/64072-deep-learning-toolbox-model-quantization-library)

Microchip hardware and deployment:
-	[Microchip Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip.html)
-	[Microchip dsPIC, PIC32, and SAM Controller Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip-dspic.html)
-	[MPLAB Device Blocks for Simulink (dsPIC, PIC32 and SAM MCU)](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu)
-	[Microchip MPLAB Discover: MATLAB and Simulink Models](https://mplab-discover.microchip.com/v2/category/com.microchip.other-more/com.microchip.matlab.project)
-	[Processor-in-the-Loop (PIL) verification](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html)
-	[Edge Impulse keyword spotting on the SAM E54 Curiosity Ultra](https://developerhelp.microchip.com/xwiki/bin/view/applications/machine-learning/edge-impulse-keyword-spotting/)
-	[Timberwolf Dev Kit EV08Z13A starter guide](https://github.com/MicrochipTech/EV08Z13A)
-	[Simulink external mode with Microchip dsPIC MCUs (video)](https://www.youtube.com/watch?v=wuzLmORk1M0)

Robot mission, control, and perception:
-	[Pure Pursuit Controller](https://www.mathworks.com/help/nav/ug/pure-pursuit-controller.html)
-	[Voice controlled robot](https://www.mathworks.com/matlabcentral/fileexchange/57528-voice_controlled_robot)
-	[Simulating Mobile Robots with MATLAB and Simulink](https://www.youtube.com/watch?v=7p2McZCKvus)
-	[Face Detection and Human Tracking Robot](../Face%20Detection%20and%20Human%20Tracking%20Robot/README.md) — companion project for the tracking and drive portion

## Impact

Open up the opportunities to create robots that can be an intuitive part of our world.

## Expertise Gained

Artificial Intelligence, Computer Vision, Robotics, Signal Processing, Audio Processing, Embedded AI, Human-robot Interaction, Natural Language Processing, Mobile Robots, Embedded Systems, Control, Cloud Computing

## Suggested MathWorks Products

-	[MATLAB](https://www.mathworks.com/products/matlab.html) and [Simulink](https://www.mathworks.com/products/simulink.html)
-	[Audio Toolbox](https://www.mathworks.com/products/audio.html)
-	[Signal Processing Toolbox](https://www.mathworks.com/products/signal.html) and [DSP System Toolbox](https://www.mathworks.com/products/dsp-system.html)
-	[Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
-	[Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html)
-	[Computer Vision Toolbox](https://www.mathworks.com/products/computer-vision.html) and [Image Processing Toolbox](https://www.mathworks.com/products/image-processing.html)
-	[Stateflow](https://www.mathworks.com/products/stateflow.html)
-	[Robotics System Toolbox](https://www.mathworks.com/products/robotics.html) and/or [Navigation Toolbox](https://www.mathworks.com/products/navigation.html)
-	[Fixed-Point Designer](https://www.mathworks.com/products/fixed-point-designer.html)
-	[Embedded Coder](https://www.mathworks.com/products/embedded-coder.html), [Simulink Coder](https://www.mathworks.com/products/simulink-coder.html), and [MATLAB Coder](https://www.mathworks.com/products/matlab-coder.html) — required by [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu)
-	Optional: [Simscape Multibody](https://www.mathworks.com/products/simscape-multibody.html) for the robot plant model, [Simulink Test](https://www.mathworks.com/products/simulink-test.html) for regression testing

Note that MathWorks does not ship an Embedded Coder hardware support package for Microchip MCUs; the peripheral blocks (I2S, SPI, UART, ADC, PWM, QEI), the multi-tasking scheduler, and the one-click build/program workflow come from Microchip's own [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu), which requires Embedded Coder, Simulink Coder, and MATLAB Coder plus MPLAB X IDE and an MPLAB XC compiler.

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/7) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

30

