**Project 245:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ai-for-wireless-synthetic-waveform-dataset.jpg"  width=500 /></td>
<td><p><h1>Classify RF Signals Using AI</h1></p>
<p>Use deep learning to classify wireless signals and perform real-world testing with software defined radios.</p>
</table>

## Motivation

AI is now becoming a mainstream technology, and is being used to develop new drugs, combat human trafficking, and help diagnose cancer.  Some of these same techniques can be used to classify RF signals propagating through the air.  Classifying RF signals is an important problem, because our spectrum is getting more crowded every year.  Cellular, WiFi, Bluetooth, ZigBee, UWB, SatCom, radar, GPS, IoT – interference scenarios are cropping up all the time, and we need to know who is interfering with whom.  AI can help.

## Project Description

Use a deep neural network to classify wireless signals that may interfere with one another, like 5G, LTE, WiFi, Bluetooth, and ZigBee.  Perform real-world testing by transmitting and receiving those signals with software defined radios.

Using the [Spectrum Sensing with Deep Learning to Identify 5G and LTE Signals]( https://www.mathworks.com/help/comm/ug/spectrum-sensing-with-deep-learning-to-identify-5g-and-lte-signals.html) example as a starting point, use transfer learning to adapt that example’s AI network to classify real-world signals that may interfere with one another.  Examples include:
- Bluetooth and WiFi
- Radar and 5G
- ZigBee and Bluetooth
- ZigBee and WiFi
- Try your own!

Suggested steps:

1. Use MATLAB’s [Wireless Waveform Generator App](https://www.mathworks.com/help/comm/ref/wirelesswaveformgenerator-app.html) to generate two of the signals above.
2. Frequency translate one or both signals so that they do not overlap in frequency.  Use MATLAB’s [Multiband Combiner](https://www.mathworks.com/help/comm/ref/comm.multibandcombiner-system-object.html) for this.
3. Follow the steps taken in the [Spectrum Sensing with Deep Learning to Identify 5G and LTE Signals](https://www.mathworks.com/help/comm/ug/spectrum-sensing-with-deep-learning-to-identify-5g-and-lte-signals.html) example:
    1. Create a data set to be used for training and validation.  Create signals with a variety of impairments.
    2. Train your AI network on that generated data set.  Use the existing network in the example and perform transfer learning.  Learn more about transfer learning with these links:
        1. [Get Started with Transfer Learning](https://www.mathworks.com/help/deeplearning/gs/get-started-with-transfer-learning.html)
        2. [Transfer Learning with Deep Network Designer](https://www.mathworks.com/help/deeplearning/ug/transfer-learning-with-deep-network-designer.html)
    3. Validate your AI network with a small percentage of your generated data.
    4. Test using over-the-air signals, captured with an SDR.  You can also use an SDR to transmit the waveform, or capture existing signals from nearby cell towers, WiFi routers, etc.  The following radios could serve well for this purpose:
    
        1. [USRP B2xx, N2xx, or N3xx](https://www.mathworks.com/hardware-support/usrp.html)
        2. [ADALM-PLUTO](https://www.mathworks.com/hardware-support/adalm-pluto-radio.html)

Consider the following possibilities for advanced project work.  Or perhaps even better, imagine some of your own possibilities and try them out!
- Train and test with signals that overlap in frequency.  
- Filter one or both signals so that only a portion of their bandwidth is used to train the network.
- Improve the speed of the network.
- Simplify the network with pruning and quantization and still achieve the same classification performance as the original example.
- Change the AI network design using the [Deep Network Designer App](https://www.mathworks.com/help/deeplearning/deep-network-designer-app.html).  Try to improve the classification accuracy.
- Use public data sets with the existing network or a modified one.  One such data set can be found at [Wireless Intelligence](https://wireless-intelligence.com/#/home). 
- Test the network in other bands, with other signals.  Use the Worldwide Frequency Allocation Chart, the US Spectrum Allocation Table, or another country-specific frequency allocation chart to determine which signals might interfere with one another.
- Generate C/C++ code from the network and deploy it to an embedded processor.
- Generate HDL code using [Deep Learning HDL Toolbox](https://www.mathworks.com/products/deep-learning-hdl.html) and deploy it to an FPGA.


## Background Material

- [Spectrum Sensing with Deep Learning to Identify 5G and LTE Signals](https://www.mathworks.com/help/comm/ug/spectrum-sensing-with-deep-learning-to-identify-5g-and-lte-signals.html)
- [Deep Learning in MATLAB](https://www.mathworks.com/help/deeplearning/ug/deep-learning-in-matlab.html)


## Impact

Help to mitigate the ever-increasing RF interference problem in the developed world.

## Expertise Gained 

5G, Artificial Intelligence, Deep Learning, Image Processing, Machine Learning, Neural Networks, Software-defined Radio, Wireless Communication

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/81) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

245
