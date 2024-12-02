Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Fault%20Detection%20for%20Electric%20Motors%20Using%20Vibration%20Analysis&tfa_2=253)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Fault%20Detection%20for%20Electric%20Motors%20Using%20Vibration%20Analysis&tfa_2=253)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/faultAnalysis.jpg"  width=500 /></td>
<td><p><h1>Fault Detection for Electric Motors Using Vibration Analysis</h1></p>
<p>Develop a Fault detection system for electric motors from vibration data using Model-Based design. </p>
</table>

**_Industry Partner_:**<br>
<a href="https://www.st.com/" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ST_logo_2024_blue.png" width="150" style="display: block; margin: 0 auto;"><br>
    <span style="display: block; margin-top: 10px;">STMicroelectronics</span>
</a>

## Motivation

In today's industrial landscape, predictive maintenance has become a critical component for enhancing operational efficiency and reducing costs. Traditional maintenance strategies, such as reactive and preventive maintenance, often lead to unplanned downtime and excessive maintenance costs. Predictive maintenance, on the other hand, leverages data-driven insights to anticipate equipment failures before they occur, allowing for timely interventions.
Motors are ubiquitous in industrial applications and are essential for various processes. Their failures can lead to significant disruptions and financial losses. By implementing predictive maintenance strategies for motors, industries can ensure continuous operation, extend equipment lifespan, and optimize resource allocation. This project focuses on developing a predictive maintenance solution using MathWorks tools and deploying it on an STM board, demonstrating the practical application and industry relevance of this approach. 


## Project Description

Employ a model-based design approach to develop a robust fault detection system for electric motors. By focusing on vibration data, the project aims to identify early signs of motor faults, thereby enhancing maintenance strategies and minimizing unexpected downtime.

**Suggested Steps**

1.	**Data Collection and Preprocessing:**
    -  Use a Simulink model of the electric motor to generate synthetic vibration data. This model allows for the simulation of various operating conditions and fault scenarios, providing a comprehensive dataset for analysis. Collect real-word vibration data from a sensor attached to an electric mode if available, to complement the synthetic dataset. 
Choose an electric motor that is readily available or commonly found in household appliances, such as [DC motors](https://www.mathworks.com/help/sps/ref/dcmotor.html), [BLDC motors](https://www.mathworks.com/help/sps/ref/bldc.html), [Universal motors](https://www.mathworks.com/help/sps/ref/universalmotor.html).
Consider faults arising from external components or events, such as open or short circuits, and mechanical issues. Some fault scenarios to consider in your simulation model may include:
        -  Bearing Faults: Simulate bearing defects by introducing variations in the bearing stiffness or adding artificial noise to the vibration signal corresponding to bearing frequencies. You can adopt the [Bearing](https://www.mathworks.com/help/sdl/ref/bearing.html) block, which has built-in fault options. A
[Variable Rotational Damper](https://www.mathworks.com/help/sdl/ref/variablerotationaldamper.html)  can also be adopted to simulate rotational friction degradation.
        -  Rotor Imbalance: Model rotor imbalance by altering the mass distribution of the rotor, which can be simulated by adding an unbalanced mass or modifying the rotor inertia.
        -  Shaft Misalignment: Introduce shaft misalignment by adjusting the angular displacement between the motor shaft and the load shaft within the Simulink model.
For this and the fault above a [Flexible Shaft] block can be used. 
        -  Electrical Faults: Simulate [electrical faults](https://www.mathworks.com/help/sps/ref/fault.html) such as open or short circuits.
    -  Use an [accelerometer sensor block](https://www.mathworks.com/help/sps/ref/accelerometer.html) or other [mechanical sensors](https://www.mathworks.com/help/simscape/mechanical-sensors.html) to capture vibration data along the three axes.
    -  Preprocess the data to ensure quality and consistency, including filtering noise, handling missing values, and normalizing the data if necessary.
2.	**Feature Extraction and Condition Monitoring:**
    -	Extract significant features, using the [Predictive Maintenance Toolbox™](https://www.mathworks.com/help/predmaint/rotating-machinery.html)
3.	**Fault Detection Model Development:**
    -	Develop a fault detection model using the extracted features and the [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) or the [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html). This model aims to classify the motor's condition as normal or faulty based on vibration patterns.
    -	Train the model using the collected datasets, which include examples of both normal operation and various fault conditions. Validate the model to ensure high accuracy in detecting faults.
4.	**Simulation and Validation:**
    -	Utilize the Simulink model to test the fault detection model in a simulated environment. This allows for extensive testing under diverse operational scenarios and fault conditions before hardware deployment. Validate the model using a separate test dataset to confirm its robustness and reliability in identifying faults.
5.	**Deployment and Real-Time Monitoring:**
    -	Deploy the validated fault detection model on an STM32 NUCLEO-H743ZI2 microcontroller board using the [Simulink Coder Support Package for STMicroelectronics Nucleo Boards](https://www.mathworks.com/help/rtw/nucleo-spkg.html). This deployment enables the model to operate in real-time, continuously analyzing vibration data from the motor.
    -	Consider using the [LIS3DH Accelerometer Sensor](https://www.mathworks.com/help/rtw/nucleo/ref/lis3dhaccelerometersensor.html) block to connect with the sensor for real time fault detection model testing before deployment and for easy integration with the STM board. Other sensor blocks are available [here](https://www.mathworks.com/help/rtw/modeling-nucleo.html?s_tid=CRUX_lftnav)
    -	Implement a real-time monitoring system that uses the deployed model to detect faults as they occur. 
      -	Carefully position the accelerometer sensor to capture vibration data that closely matches the patterns observed in the simulated data used for training. This involves placing the sensor in a location that accurately reflects the motor's operational vibrations and potential faults.
    -	Connect the accelerometer sensor to the microcontroller to facilitate data reading. Ensure the communication protocol (I2C or SPI) is correctly configured, and the microcontroller can efficiently acquire and process the sensor data for the embedded detection mode.
    - Create a notification system that alerts users when a fault is detected. This could involve visual indicators (LEDs), audible alarms (buzzers), or digital notifications (emails, SMS, or app alerts). Ensure the system is reliable and provides timely alerts to facilitate quick responses to detected faults.

## Background Material

-	[Using Simulink to Generate Fault Data](https://www.mathworks.com/help/predmaint/ug/Use-Simulink-to-Generate-Fault-Data.html)
-	[Detect and Diagnose Faults](https://www.mathworks.com/help/predmaint/detect-and-diagnose-faults.html)
-	[Blocks that Support Fault Modeling](https://www.mathworks.com/help/simscape/ug/block-support.html)
-	[Vibration Analysis](https://www.mathworks.com/help/signal/vibration-analysis.html)
-	[Faulted PMSM](https://www.mathworks.com/help/sps/ug/motor-pmsm-faulted.html)
-	[Rolling Element Bearing Fault Diagnosis](https://www.mathworks.com/help/predmaint/ug/Rolling-Element-Bearing-Fault-Diagnosis.html)
-	[Shaft with Torsional and Transverse Flexibility](https://www.mathworks.com/help/sdl/ug/shaft-with-torsional-and-transverse-flexibility.html)
-	[Wind Turbine Driveline with Vibrations](https://www.mathworks.com/help/sdl/ug/wind-turbine-driveline-with-vibrations.html)
-	[Anomaly Detection Using 3 axis Vibration Data](https://www.mathworks.com/help/predmaint/ug/anomaly-detection-using-3-axis-vibration-data.html)
-	[Background on condition monitoring for edge devices](https://www.st.com/en/applications/factory-automation/condition-monitoring-predictive-maintenance.html?ecmp=tt21798_gl_ps_jun2021&aw_kw=sensor%20vibration%20monitoring&aw_m=p&aw_c=15068516388&aw_tg=aud-2199951809908:kwd-1157133762363&aw_gclid=CjwKCAiAudG5BhAREiwAWMlSjKyR3CPcOVxYsK6yVMET_X6sYAYabJ-2R6RZaWIFDFrAJScNFVd04BoCNc8QAvD_BwE&gad_source=1&gclid=CjwKCAiAudG5BhAREiwAWMlSjKyR3CPcOVxYsK6yVMET_X6sYAYabJ-2R6RZaWIFDFrAJScNFVd04BoCNc8QAvD_BwE#overview)
-	[Resources for the STM32 NUCLEO-H753ZI board](https://www.st.com/en/evaluation-tools/nucleo-h753zi.html#overview)


## Impact

Enhance motor reliability and reduce downtime through advanced fault detection.

## Expertise Gained 

Artificial Intelligence, Big Data, Embedded AI, Machine Learning, Modeling and Simulation, Predictive Maintenance, Health Monitoring, Low-cost Hardware

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/120) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

253
