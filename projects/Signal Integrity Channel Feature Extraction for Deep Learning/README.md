**Project 198:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="/images/backplane.png"  width=500 /></td>
<td><p><h1>Signal Integrity Channel Feature Extraction for Deep Learning</h1></p>
<p> Develop a deep learning approach for signal integrity applications. </p>
</table>

## Motivation

Modern society is dependent on a fast, reliable, and inexpensive internet.  Signal integrity engineers design the boards, packages and computer systems that carry internet traffic and provide internet access.  New approaches would enable more robust and faster communications systems that are delivered to market sooner. 

So far, deep learning has not significantly impacted computer interconnect design.  Many approaches have been tried but the channel S-parameter models are much too complex and difficult to apply [1, 2]. Among them is the lack of data to train DL models with.  Further each signal integrity system design has its own unique characteristics, and a general DL model would likely not apply to more than a few designs.  

Explore using a segmented parameterized channel model approach to extract channel features that may lead to better neural network models of the interconnect.  

## Project Description

This project proposes a feature extraction approach where the total end-to-end channel S-parameter is represented by a series of parameterized transmission lines.  If this decomposition of the channel into sub-blocks has sufficient fidelity, then it can be used as proxy for the total end-to-end channel.  Further, the parameters of certain sub-blocks represent design variables, like transmission line length, and other parameters represent manufacturing variation variables, like characteristic impedance and the span of these variables forms the design parameter space.  By judiciously choosing values from this space, a set of synthetic system end-to-end features, S-parameters and system performance metrics can be used to train a neural network (NN). 

Determining the interconnect features is analogous to the labeling process of an image for an automated driving application. The project is roughly divided into two main questions, 1) Can the features be used to predict system performance? And 2) can the features be automatically extracted from end-to-end system S-parameters? 

Suggested steps:  

- Perform literature research prior to starting the work. 

- Validate general approach, Can the features be used to predict system performance with a NN?:  

- Forward model creation with SerDes Toolbox:  1) Transmission line creation [3,4], 2) Cascading of S-parameters [5], 3) Convert to time-domain [3], 4) Quantify system performance [6] 

- Prove that transmission line parameters can be used as features [12] for NN modeling. 1) For a network of N

## Background Material

[1] M. Schierholz et al., "SI/PI-Database of PCB-Based Interconnects for Machine Learning Applications," in IEEE Access, vol. 9, pp. 34423-34432, 2021 

[2] M. Swaminathan, H. M. Torun, H. Yu, J. A. Hejase and W. D. Becker, "Demystifying Machine Learning for Signal and Power Integrity Problems in Packaging," in IEEE Transactions on Components, Packaging and Manufacturing Technology, vol. 10, no. 8, pp. 1276-1295, Aug. 2020.  --- see section “IV.C Problem 8 - High speed channel signaling” 

[3] See SerDes Toolbox function: serdes.ChannelLoss.causalTransmissionLine 

[4] “Proposal for a causal transmission line model,” IEEE  P802.3bj  Task  Force,  http://www.ieee802.org/3/bj/public/mar14/healey_3bj_01_0314.pdf, March 2014. 

[5] https://www.mathworks.com/help/rf/ref/cascadesparams.html 

[6] https://www.mathworks.com/help/serdes/ref/optpulsemetric.html 

[7] Liu, P., J. Zhang, and J. Fang, “Accurate characterization of lossy interconnects from TDR waveforms," 2013 IEEE 22nd Conference on Electrical Performance of Electronic Packaging and Systems, 187-190, 2013. 

[8] Schuster, C. and W. Fichtner, “Signal integrity analysis of interconnects using the FDTD method and a layer peeling technique," IEEE Transactions on Electromagnetic Compatibility, Vol. 42, No. 2, 229-233, 2000. 

[9] https://www.mathworks.com/help/rf/ug/de-embedding-s-parameters.html 

[10] R. J. Allred and C. Furse, “Reflection budgeting methodology for high-speed serial link signal integrity design,” Progress In Electromagnetics Research B, vol. 91, pp. 59–77, 2021. 

[11] R. J. Allred and C. M. Furse, “Linearization of  s-parameter cascading for analysis of multiple reflections,” Applied Computational Electromagnetics Society Journal, vol. 33, no. 12, 2018. 

[12] https://en.wikipedia.org/wiki/Feature_extraction 

[13] https://en.wikipedia.org/wiki/Inverse_problem 

[14] https://www.ieee802.org/3/ck/public/tools/index.html 

## Impact

Accelerate signal integrity design and analysis to enable society with more robust and connected internet communications. 

## Expertise Gained 

Artificial Intelligence, Deep Learning, Machine Learning, Modeling and Simulation, Neural Networks, RF and Mixed Signal


## Project Difficulty

Master's, Doctoral

## Project Number

198