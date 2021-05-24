**Project 193:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/HearingAid.PNG"  width=500 /></td>
<td><p><h1>Speech Background Noise Suppression with Deep Learning</h1></p>
<p> Develop a deep learning neural network for audio background noise suppression.</p>
</table>

## Motivation

Globally, 1.5 billion people live with some degree of hearing loss, according to the [World Health Organization](https://www.who.int/news-room/fact-sheets/detail/deafness-and-hearing-loss). Of those who could benefit with the use of a hearing aid, only 17% use one. Background noise can be very detrimental to such devices because it reduces the intelligibility and quality of speech. Noise suppression is an active research area with multiple applications, beside hearing aids, including smart devices, and online meetings. Moreover, the recent rapid rise of “remote work” has widened the need for efficient and robust noise suppression. 

Noise suppression is a challenging problem. Noise suppression systems must handle a wide variety of types and sources of noise, possibly at low signal-to-noise ratios. Additionally, they must strike a balance between removing unwanted noise and minimizing speech distortion in order maintain speech intelligibility. 

Noise suppression approaches based on artificial intelligence (AI) and, more specifically, deep learning have recently shown promising results. The availability of large, public datasets for clean speech and noise audio signals has enabled researchers and engineers to design and train AI noise suppression models that potentially outperform more traditional signal processing techniques. 

## Project Description

Work with the [Audio Toolbox™](https://www.mathworks.com/products/audio.html) and [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) products to develop and train a noise suppression deep learning network using MATLAB®. Test and validate your trained network using both subjective and objective methods. 

 Suggested steps: 

1. Perform a literature search on speech noise suppression using deep learning. 

2. Download the speech and noise dataset by following the instructions on the [Microsoft DNS challenge repository](https://github.com/microsoft/DNS-Challenge).  

3. Design the deep learning network using Deep Learning Toolbox. There are many network architectures to choose from. The two most common ones are convolutional neural networks, or CNN, ([[5]](#choi), [[6]](#isik)), and recurrent neural networks, or RNN ([[2]](#valin), [[3]](#xiang), [[4]](#nils)).
Your solution may require applying signal processing at the input or output of your network (for example, for signal pre-processing, feature extraction, or 
time-frequency transformation). In that case, you can use Audio Toolbox and [Signal Processing Toolbox™](https://www.mathworks.com/products/signal.html) functionalities. 

4. Train the network using the downloaded speech/noise dataset. 

5.  Evaluate your noise suppression system on a test set, using both subjective evaluation (score based on hearing) and objective metrics (for example, signal-to-interference ratio). 

Project variations: 

1. Use an end-to-end noise suppression system. Many noise suppression techniques in the literature transform the audio time-series into a time-frequency representation (such as a magnitude spectrogram, or a short-time Fourier transform) before feeding it to the network ([[3]](#xiang), [[4]](#nils), [[5]](#choi), [[6]](#isik)). However, end-to-end noise suppression systems have also been proposed recently, where the audio signal is directly fed to the system ([[7]](#alamdari), [[8]](#rethage)). 

2. Use a self-supervised technique where you train only on noisy data (see [[7]](#alamdari) for an example), instead of training your network using clean/noisy speech pairs.  

Advanced project work: 

1. Run your noise suppressor model in real time: it must take less than the frame stride time to process an input frame of speech otherwise, your system will drop audio samples, degrading the speech quality or rendering it non-intelligible.  

2. Take your noise suppressor beyond the desktop and deploy it on an embedded target, for example a Raspberry Pi™ board. Refer to the “Background material” section for an example. 

3. Extend the scope of your network to perform speech dereverberation as well. The available dataset contains measured and synthetic room impulse responses that you can use to generate reverberant speech training data. 

4. Consider personalized noise suppression, where your network is trained to improve the speech quality of a particular speaker. In this scenario, you have access to a few minutes of speech from this speaker, from which you can extract features in the training stage.  


## Background Material

1. [Get started with Deep Learning Toolbox](https://www.mathworks.com/help/deeplearning/examples.html?category=getting-started-with-deep-learning-toolbox&exampleproduct=all&s_tid=CRUX_lftnav) for simple examples of designing and training deep learning networks.  

2. [Deep Learning with Time Series, Sequences, and Text](https://www.mathworks.com/help/deeplearning/examples.html?category=deep-learning-with-time-series-sequences-and-text&s_tid=CRUX_topnav) for examples of deep learning applied to time-series data, including audio and speech. 

3. [Denoise Speech Using Deep Learning Networks](https://www.mathworks.com/help/audio/ug/denoise-speech-using-deep-learning-networks.html) for illustration purposes. 

4. [Speech Command Recognition Code Generation on Raspberry Pi](https://www.mathworks.com/help/deeplearning/ug/speech-command-recognition-code-generation-on-raspberry-pi.html). 


Suggested readings: 

<a name="chandan"></a>[1] Chandan K.A.Reddy et al, “The INTERSPEECH 2020 Deep Noise Suppression Challenge: Datasets, Subjective Testing Framework, and Challenge Results”, INTERSPEECH 2020, October 2020, Shanghai, China. 

<a name="valin"></a>[2] J.-M. Valin, "A Hybrid DSP/Deep Learning Approach to Real-Time Full-Band Speech Enhancement", International Workshop on Multimedia Signal Processing, 2018. (arXiv:1709.08243) 

<a name="xiang"></a>[3] Hao Xiang, Su Xiangdong, Horaud Radu, Li Xiaofei, "FullSubNet: A Full-Band and Sub-Band Fusion Model for Real-Time Single-Channel Speech Enhancement", ICASSP 2021. (arXiv:2010.15508) 

<a name="nils"></a>[4] Nils L. Westhausen, Bernd T. Meyer, "Dual-Signal Transformation LSTM Network for Real-Time Noise Suppression", INTERSPEECH 2020. (arXiv:2005.07551) 

<a name="choi"></a>[5] Hyeong-Seok Choi, Hoon Heo, Jie Hwan Lee, Kyogu Lee, "Phase-aware Single-stage Speech Denoising and Dereverberation with U-Net", INTERSPEECH 2020. (arXiv:2006.00687) 

<a name="isik"></a>[6] Umut Isik et Al, "PoCoNet: Better Speech Enhancement with Frequency-Positional Embeddings, Semi-Supervised Conversational Data, and Biased Loss", INTERSPEECH 2020. (arXiv:2008.04470)   

<a name="alamdari"></a>[7] N. Alamdari, A. Azarang, N. Kehtarnavaz, “Improving deep speech denoising by Noisy2Noisy signal mapping”, Applied Acoustics, Volume 172, 2021. (arXiv:1904.12069) 

<a name="rethage"></a>[8] D. Rethage, J. Pons, X, Serra, “A Wavenet for Speech Denoising", ICASSP 2018. (arXiv:1706.07162) 

## Impact

Advance hearing aid technology through research in speech enhancement and noise suppression and improve the quality of life of persons with a hearing impairment.

## Expertise Gained 

Artificial Intelligence, Deep Learning, Neural Networks, Signal Processing

## Project Difficulty

Bachelor, Master's, Doctoral 

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/24) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[jibrahim](https://github.com/jibrahim80)

## Project Number

193
