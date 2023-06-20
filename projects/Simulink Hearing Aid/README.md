**Project 241:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/hearingAid.jpg"  width=500 /></td>
<td><p><h1>Simulink Hearing Aid </h1></p>
<p>Develop a hearing aid simulation in Simulink.</p>
</table>

## Motivation

Over 1.8 billion people worldwide suffer from some level of hearing loss, however, only around [1 in 5](https&#58;//www.hearingloss.org/wp-content/uploads/HLAA_HearingLoss_Facts_Statistics.pdf) of those people use a hearing aid. Many medical device companies are working towards creating hearing aids that are cheaper, last longer, and work better, to improve their adoption amongst those who need them. The development of open-source hearing aid models could provide a platform to help improve both the efficacy, and accessibility, of hearing aids. 

## Project Description

Use the [Audio Toolbox™](https://www.mathworks.com/products/audio.html) and/or [Simulink™](https://www.mathworks.com/products/simulink.html) to implement a block-based hearing aid simulation. Test in real time using a headset with microphone as the input, or with pre-recorded audio. 

Suggested steps: 

- Perform a literature review to discover the signal processing blocks commonly included in hearing aids and understand their purpose.  

- Create a simple input-&gt;output model that performs no signal processing but includes a filtered and delayed feedback loop from output-&gt;input to simulate crosstalk between microphone and speakers. 

- Develop signal processing blocks and link them together to create a full hearing aid model. 

Suggested signal processing blocks: 

- Single or multi-band dynamic range compression (‘DRC’) (and/or automatic gain control (‘AGC’)). 

- Noise suppression / reduction (‘NR’). 

- Filtering / equalization. 

- Feedback suppression / cancellation (‘DFS’/’DFC’) or adaptive feedback cancellation (‘AFC’). 

Advanced project extension(s):  

- Deploy the completed model to a cell phone, Raspberry Pi™ or other similar device, with an attached headset/microphone.  

- Adaption: Automatically adapt algorithm parameters to better suit the current listening conditions. Can include classification of the current environment, e.g., ‘music’, ‘speech’, ‘noise’. 

## Background Material

[MATLAB and Simulink for Hearing Aids](https://www.mathworks.com/solutions/medical-devices/hearing-aids.html) 

Real-Time Audio in MATLAB: 

- [Real-Time Audio in Simulink](https://www.mathworks.com/help/audio/gs/real-time-audio-in-simulink.html) 

- [Real-Time Audio in MATLAB](https://www.mathworks.com/help/audio/gs/real-time-audio-in-matlab.html) 

Audio signal processing examples: 

- [Audio Processing Algorithm Design](https://www.mathworks.com/help/audio/audio-processing-algorithm-design.html?s_tid=CRUX_lftnav) 

- [Acoustic Noise Cancellation using LMS](https://www.mathworks.com/help/audio/ug/acoustic-noise-cancellation-using-lms.html) 

- [Cochlear Implant Speech Processor](https://www.mathworks.com/help/audio/ug/cochlear-implant-speech-processor.html) 

- [Active Noise Control with Simulink Real-Time](https://www.mathworks.com/help/audio/ug/active-noise-control-with-simulink.html) and [video](https://www.mathworks.com/videos/active-noise-control-from-modeling-to-real-time-prototyping-1561451814853.html) 

- [Code generation and deployment](https://www.mathworks.com/help/audio/examples.html?category=code-generation-and-deployment&s_tid=CRUX_topnav) 

Reading materials: 

[1] [Launer, S., Zakis, J.A., Moore, B.C.J. (2016). Hearing Aid Signal Processing. ](https://link.springer.com/chapter/10.1007/978-3-319-33036-5_4) 

[2] [H. Puder, Hearing aids: an overview of the state-of-the-art, challenges, and future trends of an interesting audio signal processing application, ISPA 2009.](https://ieeexplore.ieee.org/abstract/document/5297793) 

[3] [Kates JM, Principles of Digital Dynamic-Range Compression, Trends in Amplification.](https://journals.sagepub.com/doi/full/10.1177/108471380500900202) 

[4] [F. Strasser and H. Puder, Adaptive Feedback Cancellation for Realistic Hearing Aid Applications, TASLP 2015.](https://ieeexplore.ieee.org/abstract/document/7268853) 

## Impact

Improve hearing aid simulation and create a testbed for new audio processing algorithm prototyping. 

## Expertise Gained 

Signal Processing, Audio, Modeling and Simulation

## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/79) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

241
