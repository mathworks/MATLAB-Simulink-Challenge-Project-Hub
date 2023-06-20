**Project 198:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/backplane.png"  width=500 /></td>
<td><p><h1>Signal Integrity Channel Feature Extraction for Deep Learning</h1></p>
<p> Develop a deep learning approach for signal integrity applications. </p>
</table>

## Motivation

Modern society is dependent on a fast, reliable, and inexpensive internet.  Signal integrity engineers design the boards, packages and computer systems that carry internet traffic and provide internet access.  New approaches would enable more robust and faster communications systems that are delivered to market sooner. 

So far, deep learning has not significantly impacted computer interconnect design.  Many approaches have been tried but the channel S-parameter models are much too complex and difficult to apply [[1](#schierholz), [2](#swaminathan)]. Among them is the lack of data to train DL models with.  Further each signal integrity system design has its own unique characteristics, and a general DL model would likely not apply to more than a few designs.  

Explore using a segmented parameterized channel model approach to extract channel features that may lead to better neural network models of the interconnect.  

## Project Description

This project proposes a feature extraction approach where the total end-to-end channel S-parameter is represented by a series of parameterized transmission lines.  If this decomposition of the channel into sub-blocks has sufficient fidelity, then it can be used as proxy for the total end-to-end channel.  Further, the parameters of certain sub-blocks represent design variables, like transmission line length, and other parameters represent manufacturing variation variables, like characteristic impedance and the span of these variables forms the design parameter space.  By judiciously choosing values from this space, a set of synthetic system end-to-end features, S-parameters and system performance metrics can be used to train a neural network (NN). 

Determining the interconnect features is analogous to the labeling process of an image for an automated driving application. The project is roughly divided into two main questions, 1) Can the features be used to predict system performance? And 2) can the features be automatically extracted from end-to-end system S-parameters? 

Suggested steps:  

1. Perform literature research prior to starting the work. 
2. Validate general approach, Can the features be used to predict system performance with a NN?:  
    1. Forward model creation with [SerDes Toolbox™](https://www.mathworks.com/products/serdes.html):
        1. Transmission line creation [[3](#serdesfun), [4](#ctlm)]
        2. Cascading of S-parameters [[5](#cascade)]
        3. Convert to time-domain [[3](#serdesfun)]
        4. Quantify system performance [[6](#optpulse)] 
    2. Prove that transmission line parameters can be used as features [[12](#fe)] for NN modeling.
        1. 	For a network of N<10 transmission line blocks, vary length and impedance parameters to create M≈1000 end-to-end S-parameters.  Quantify system performance for each.
        2. 	Use the Deep Learning Toolbox to train a NN model on 90% of the data and validate on remaining 10%.

Advanced project work:
1.	Inverse process [13](#ip) part I: Extract the features from synthetic channel S-parameter models.
    1.	For synthetic end-to-end S-parameters like those created in step 2.b.i, extract the transmission line parameters.
    2.	Ideas to explore: 
      1.  Impedance peeling algorithms [[7](#liu), [8](#schuster)]
      2.  De-embedding [[9](#deembed)]
      3.  Cascading S-parameter Linearization Technique (CSLT) [[10](#allred21), [11](#allred18)]
2.	Inverse process part II: Extract the features from general S-parameter models.
    1.	Select an end-to-end channel model S-parameter [[1](#schierholz), [14](#toolschannels)]
    2.	Apply Inverse process to extract a representative set of parameterized transmission lines that best fits the data.
3.	Create synthetic DL data set
    1.	Using the extracted features, vary the trace length, impedance or other properties to create a training set of end-to-end S-parameters.
    2.	Train NN on data set 
    3.	Identify ways to validate approach

## Background Material

<a name="schierholz"></a>[1] M. Schierholz et al., "SI/PI-Database of PCB-Based Interconnects for Machine Learning Applications," in IEEE Access, vol. 9, pp. 34423-34432, 2021 

<a name="swaminathan"></a>[2] M. Swaminathan, H. M. Torun, H. Yu, J. A. Hejase and W. D. Becker, "Demystifying Machine Learning for Signal and Power Integrity Problems in Packaging," in IEEE Transactions on Components, Packaging and Manufacturing Technology, vol. 10, no. 8, pp. 1276-1295, Aug. 2020.  --- see section “IV.C Problem 8 - High speed channel signaling” 

<a name="serdesfun"></a>[3] See SerDes Toolbox function: serdes.ChannelLoss.causalTransmissionLine 

<a name="ctlm"></a>[4] “[Proposal for a causal transmission line model](http://www.ieee802.org/3/bj/public/mar14/healey_3bj_01_0314.pdf)”, IEEE P802.3bj Task Force, March 2014. 

<a name="cascade"></a>[5] [Cascading of S-parameters](https://www.mathworks.com/help/rf/ref/cascadesparams.html) 

<a name="optpulse"></a>[6] [Pulse response metric for optimization routines](https://www.mathworks.com/help/serdes/ref/optpulsemetric.html) 

<a name="liu"></a>[7] Liu, P., J. Zhang, and J. Fang, “Accurate characterization of lossy interconnects from TDR waveforms," 2013 IEEE 22nd Conference on Electrical Performance of Electronic Packaging and Systems, 187-190, 2013. 

<a name="schuster"></a>[8] Schuster, C. and W. Fichtner, “Signal integrity analysis of interconnects using the FDTD method and a layer peeling technique," IEEE Transactions on Electromagnetic Compatibility, Vol. 42, No. 2, 229-233, 2000. 

<a name="deembed"></a>[9] [De-Embedding S-Parameters](https://www.mathworks.com/help/rf/ug/de-embedding-s-parameters.html) 

<a name="allred21"></a>[10] R. J. Allred and C. Furse, “Reflection budgeting methodology for high-speed serial link signal integrity design,” Progress In Electromagnetics Research B, vol. 91, pp. 59–77, 2021. 

<a name="allred18"></a>[11] R. J. Allred and C. M. Furse, “Linearization of  s-parameter cascading for analysis of multiple reflections,” Applied Computational Electromagnetics Society Journal, vol. 33, no. 12, 2018. 

<a name="fe"></a>[12] [Feature_extraction](https://en.wikipedia.org/wiki/Feature_extraction) 

<a name="ip"></a>[13] [Inverse problem](https://en.wikipedia.org/wiki/Inverse_problem) 

<a name="toolschannels"></a>[14] [IEEE P802.3ck Task Force - Tools and Channels](https://www.ieee802.org/3/ck/public/tools/index.html) 

## Impact

Accelerate signal integrity design and analysis to enable society with more robust and connected internet communications. 

## Expertise Gained 

Artificial Intelligence, Deep Learning, Machine Learning, Modeling and Simulation, Neural Networks, RF and Mixed Signal


## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/29) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By 

[richardallredmathworks](https://github.com/richardallredmathworks)

## Project Number

198

##

<img align="left" src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/86fc1b776d9952d9402cb3cbcd9ade5bf95d1e82/t-shirt.jpg" width="120">
<br>

### Be the first to sign up for this project and receive a MathWorks T-shirt!
