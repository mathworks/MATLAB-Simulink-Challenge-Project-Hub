Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Smart%20Watering%20System%20with%20Internet%20of%20Things&tfa_2=219)</strong> to **register** your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Smart%20Watering%20System%20with%20Internet%20of%20Things&tfa_2=219)</strong> to **submit** your solution to this project and qualify for the rewards.

This project is developed in collaboration with **Microchip Technology Inc.**

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/agriculture.jpg"  width=500 /></td>
<td><p><h1>Smart Watering System with Internet of Things</h1></p>
<p>Develop a smart plant watering system using Internet of Things (IoT) and Microchip&reg; low-cost hardware </p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://www.microchip.com/en-us/education/academic-program" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/Microchip-Logo.png" width="300" style="display: block; margin: 0 auto;"><br>
</a>

## Motivation

Drought and hunger affect hundreds of millions of people around the world. Pressures from increasing population, inequity, climate change, and water shortages contribute to this challenge. Agriculture accounts for approximately 80 percent of the consumptive water use in the United States. Cutting-edge technologies like AI and IoT will be instrumental in fostering sustainable agricultural practices.
Efficient irrigation systems can help conserve resources and maintain farm profitability in an era of increasing food demand and rising costs. IoT-driven systems can automatically monitor, analyze, and precisely regulate water demand and supply, to minimize water overuse and eliminate the need for human intervention.
You can be a pioneer in the field of smart agriculture. Use cutting-edge technology to save water and optimize agricultural practices.


## Project Description

The Internet of Things gives increased access to and control of smart devices. Sensors on these smart devices measure certain types of data, and the power of IoT can transfer that data to the cloud, where it can be used to make real-time decisions.

Design an IoT-enabled system that will manage plant irrigation to optimize water use. Use Microchip low-cost hardware to interface with sensors, collect the data on the cloud and determine when and how the plants are watered. The embedded application will be modelled in Simulink&reg; and deployed to the board with [Embedded Coder&reg;](https://www.mathworks.com/products/embedded-coder.html) and [MPLAB&reg; Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu).

There are two options for this project — pick one (see [Required Hardware](#required-hardware) for the boards):

-	**Option 1 — Connected sensor node.** A simple sensor node that measures the environmental variables and sends the data to a dashboard. Built around the [AVR-IoT Cellular Mini (EV70N78A)](https://www.microchip.com/en-us/development-tool/ev70n78a), which carries its own cellular modem so the node works in the field with no local Wi-Fi. Because its data plan is intended for low throughput, this option is best suited to periodic uploads rather than regularly downloading weather forecasts.
-	**Option 2 — Smart, forecast-aware sensor node.** A node that measures soil moisture, temperature, humidity, and pressure, *and* retrieves forecast data from the web. Based on both its own measurements and the forecast it decides if and how much to water, and it also publishes a dashboard. Built around a 32-bit MCU such as the [SAM D21 Curiosity Nano (DM320119)](https://www.microchip.com/en-us/development-tool/DM320119) with the Wi-Fi [RNWF02 Add-on Board (EV72E72A)](https://www.microchip.com/en-us/development-tool/ev72e72a).

In either option, a good part of the engineering challenge is the soil moisture sensor itself. Rather than using an off-the-shelf resistive probe, consider developing a low-cost time-domain reflectometry (TDR) soil moisture sensor, which mitigates the effect of salinity in the soil. Use [Signal Processing Toolbox™](https://www.mathworks.com/products/signal.html) and [DSP System Toolbox™](https://www.mathworks.com/products/dsp-system.html) to analyse the reflected pulse and calibrate the sensor against a reference.

Suggested steps:
1.	Collect agriculture data from sensors (Temp., Humidity, Soil Moisture, etc). Temperature, humidity, and pressure can come from a [Weather Click](https://www.mikroe.com/weather-click) board; the soil moisture sensor is yours to design and calibrate.
2.	Model the sensor acquisition, conditioning, and watering-decision logic in Simulink and deploy it to the Microchip board with [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu) — see [Microchip dsPIC, PIC32, and SAM Controller Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip-dspic.html) for the workflow. Use Simulink external mode to watch the live sensor signals and tune thresholds on the running target, and [processor-in-the-loop (PIL)](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html) to confirm the generated code matches the model.
3.	Upload this data to [ThingSpeak™](https://thingspeak.com/) (IoT analytics platform) from the board over the cellular link (Option 1) or the Wi-Fi link (Option 2), using the [ThingSpeak REST API](https://www.mathworks.com/help/thingspeak/rest-api.html) or [MQTT](https://www.mathworks.com/help/thingspeak/mqtt-basics.html).
4.	Access and Analyze this data using [ThingSpeak](https://www.mathworks.com/help/thingspeak/), see some [Examples](https://www.mathworks.com/help/thingspeak/examples.html). E.g., Estimate [Evapotranspiration](http://www.fao.org/3/X0490E/x0490e0a.htm) of the field based on the input data
5.	Gather other relevant information like weather forecast data or crop parameters. For Option 2, pull the forecast from a public weather API — [webread](https://www.mathworks.com/help/matlab/ref/webread.html) is a convenient way to prototype the request and parse the response in MATLAB® before you implement it on the RNWF02 Wi-Fi stack.
6.	Determine a watering strategy based on the crop type and the data you have gathered. For example, identify how your measurements and data could help develop a predictive model in MATLAB with [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) to determine when the crop needs to be watered
7.	Send an action based on the analysis. This action could be as simple as an [e-mail notification](https://www.mathworks.com/help/thingspeak/act-on-your-data.html) to water the plants or actuate a watering system at the plant.
8.	Build a dashboard so the state of the field, the decisions taken, and the water actually used are visible at a glance. This can be a set of ThingSpeak channel visualizations or a MATLAB app.

Here are the various phases of the project:
-	Develop the requirements
-	Design the architecture and specifications of the system, and decide what runs on the Microchip MCU and what runs in the cloud
-	Select the hardware (sensors, Click boards, Microchip evaluation kit)
-	Build the system
-	Test it on a simplified use case
-	Develop analytics for the system (E.g., Forecast the amount of water used over the season for a location)

Advanced project work:
-	Add more sensors to gather different types of data such as light, airflow, and pH — the [Curiosity Nano Base for Click boards](https://www.microchip.com/en-us/development-tool/AC164162) gives you three mikroBUS&trade; sockets to expand with
-	Develop models for soil management (e.g., fertilization)
-	Imaging to monitor crop health (e.g., webcam, hyperspectral, or drone)
-	Develop AI models for Weather Prediction/Soil Characterization, and shrink them to fit the MCU with [Fixed-Point Designer™](https://www.mathworks.com/products/fixed-point-designer.html) so the node can decide autonomously when the network is unavailable
-	Model the irrigation hydraulics (pump, valves, drip lines) with [Simscape Fluids™](https://www.mathworks.com/products/simscape-fluids.html) to size the system before building it
-	Characterize the energy budget of the node and optimize the duty cycle for battery or solar operation


## Required Hardware

This project must be implemented on Microchip hardware. Choose one of the two options below.

*Option 1 — connected sensor node (cellular)*
-	[AVR-IoT Cellular Mini (EV70N78A)](https://www.microchip.com/en-us/development-tool/ev70n78a)
-	[Weather Click (temperature, humidity, pressure)](https://www.mikroe.com/weather-click)
-	A soil moisture sensor — ideally a low-cost TDR sensor you develop as part of the project

*Option 2 — smart, forecast-aware sensor node (Wi-Fi)*
-	[RNWF02 Add-on Board (EV72E72A)](https://www.microchip.com/en-us/development-tool/ev72e72a) for Wi-Fi connectivity
-	Any suitable 32-bit MCU, such as (but not limited to) the [SAM D21 Curiosity Nano Evaluation Kit (DM320119)](https://www.microchip.com/en-us/development-tool/DM320119)
-	[Curiosity Nano Base for Click Boards (AC164162)](https://www.microchip.com/en-us/development-tool/AC164162)
-	[Weather Click (temperature, humidity, pressure)](https://www.mikroe.com/weather-click)
-	A soil moisture sensor — ideally a low-cost TDR sensor you develop as part of the project

Common to both options:
-	A pump or solenoid valve and driver for the actuation part of the system
-	[MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) and an [MPLAB XC Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)
-	A free [ThingSpeak](https://thingspeak.com/) account for the cloud analytics and dashboard

Note on the deployment workflow: [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu) targets dsPIC33, PIC32, and SAM devices, so the block-based one-click deployment applies directly to the SAM D21 of Option 2. The AVR-IoT Cellular Mini of Option 1 is an AVR&reg; device: there, generate portable C from your algorithm with [MATLAB Coder™](https://www.mathworks.com/products/matlab-coder.html) or [Embedded Coder](https://www.mathworks.com/products/embedded-coder.html) and integrate it into an MPLAB X project by hand. Take this into account when you choose your option.


## Background Material

IoT and analytics:
-	[Collect Agricultural Data over The Things Network](http://www.mathworks.com/help/thingspeak/things_network_ag_data.html)
-	[Arduino Based Smart Watering of Plants](https://www.mathworks.com/help/supportpkg/arduino/examples/arduino-based-smart-watering-of-plants.html)
-	[Forecast Tidal Depths Using ThingSpeak Data](https://www.mathworks.com/help/thingspeak/forecast-tidal-wave-depths.html)
-	[How to gather data from weather forecast?](https://www.mathworks.com/matlabcentral/answers/417426-how-to-gather-data-from-weather-forecast#answer_335736)
-	[Analyzing weather data from an Arduino-based weather station](https://www.mathworks.com/matlabcentral/fileexchange/47049-analyzing-weather-data-from-an-arduino-based-weather-station)
-	[ThingSpeak Documentation](https://www.mathworks.com/help/thingspeak/), [REST API](https://www.mathworks.com/help/thingspeak/rest-api.html), and [MQTT Basics](https://www.mathworks.com/help/thingspeak/mqtt-basics.html)

Targeting Microchip hardware:
-	[Microchip Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip.html)
-	[Microchip dsPIC, PIC32, and SAM Controller Support from Embedded Coder](https://www.mathworks.com/hardware-support/microchip-dspic.html)
-	[MPLAB Device Blocks for Simulink (dsPIC, PIC32 and SAM MCU)](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu)
-	[Microchip MPLAB Discover: MATLAB and Simulink Models](https://mplab-discover.microchip.com/v2/category/com.microchip.other-more/com.microchip.matlab.project)
-	[Processor-in-the-Loop (PIL) verification](https://www.mathworks.com/help/ecoder/processor-in-the-loop.html)
-	[Simulink external mode with Microchip MCUs (video)](https://www.youtube.com/watch?v=wuzLmORk1M0)

Microchip hardware:
-	[AVR-IoT Cellular Mini (EV70N78A)](https://www.microchip.com/en-us/development-tool/ev70n78a)
-	[RNWF02 Add-on Board (EV72E72A)](https://www.microchip.com/en-us/development-tool/ev72e72a)
-	[SAM D21 Curiosity Nano Evaluation Kit (DM320119)](https://www.microchip.com/en-us/development-tool/DM320119)
-	[Curiosity Nano Base for Click Boards (AC164162)](https://www.microchip.com/en-us/development-tool/AC164162)
-	[Weather Click](https://www.mikroe.com/weather-click)

Videos:
-	[Using ThingSpeak for IoT in Agriculture](https://www.mathworks.com/videos/using-thingspeak-for-iot-in-agriculture-1594044754903.html)
-	[Using MATLAB to Empower Modern Numerical Weather Forecasts](https://www.mathworks.com/videos/using-matlab-to-empower-modern-numerical-weather-forecasts-1562096395625.html)
-	[Machine Learning for Agriculture](https://www.mathworks.com/videos/machine-learning-for-agriculture-1600457289413.html)
-	[Build a Solar Tracking System using Simulink and ThingSpeak](https://www.youtube.com/watch?v=57GxzjSaKhA)

Suggested readings:

[Real Time Weather Analysis Using ThingSpeak](https://acadpubl.eu/hub/2018-120-6/1/46.pdf)


## Impact

Minimize the negative effects of the overuse of water in farming and preserve water resources. 

## Expertise Gained 

Sustainability and Renewable Energy, Artificial Intelligence, IoT, Low-Cost Hardware, Embedded Systems, Sensor Design, Signal Processing, Deep Learning, Cloud Computing

## Suggested MathWorks Products

-	[MATLAB](https://www.mathworks.com/products/matlab.html) and [Simulink](https://www.mathworks.com/products/simulink.html)
-	[ThingSpeak](https://www.mathworks.com/products/thingspeak.html)
-	[Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html)
-	[Signal Processing Toolbox](https://www.mathworks.com/products/signal.html) and [DSP System Toolbox](https://www.mathworks.com/products/dsp-system.html) for the TDR soil moisture sensor
-	[Stateflow](https://www.mathworks.com/products/stateflow.html) for the watering decision and scheduling logic
-	[Fixed-Point Designer](https://www.mathworks.com/products/fixed-point-designer.html)
-	[Embedded Coder](https://www.mathworks.com/products/embedded-coder.html), [Simulink Coder](https://www.mathworks.com/products/simulink-coder.html), and [MATLAB Coder](https://www.mathworks.com/products/matlab-coder.html) — required by [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu)
-	Optional: [Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html) for weather/soil AI models, [Simscape Fluids](https://www.mathworks.com/products/simscape-fluids.html) for the irrigation hydraulics, [Simulink Test](https://www.mathworks.com/products/simulink-test.html) for regression testing

Note that MathWorks does not ship an Embedded Coder hardware support package for Microchip MCUs; the peripheral blocks, scheduler, and one-click build/program workflow come from Microchip's own [MPLAB Device Blocks for Simulink](https://www.mathworks.com/matlabcentral/fileexchange/71892-mplab-device-blocks-for-simulink-dspic-pic32-and-sam-mcu), which requires Embedded Coder, Simulink Coder, and MATLAB Coder plus MPLAB X IDE and an MPLAB XC compiler.

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/51) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

219
