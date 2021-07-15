**Project 192:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/SatNav.jpg"  width=500 /></td>
<td><p><h1>Improve the Accuracy of Satellite Navigation Systems</h1></p>
<p>Improve the accuracy of satellite navigation systems by using non-binary LDPC codes</p>
</table>

## Motivation

In order to improve the accuracy of satellite navigation messages received at low Signal to Noise Ratio (SNR), non-binary low density parity check (LDPC) codes have been proposed in global navigation satellite systems.
The LDPC codes are capacity approaching codes and now supersede Turbo codes. Satellite navigation systems use smaller navigational messages and regular LDPC codes used in a general wireless communication system,
are not useful as they need longer message lengths. The navigation standards such as [Beidou](https://en.wikipedia.org/wiki/BeiDou) use smaller length non-binary or M-ary LDPC codes for forward error correction in navigation messages with M-bit code words. The structure of such LDPC codes is different from the regular LDPC codes that we use in other wireless standards and, encoder and decoding algorithms designed for them do not work. Other proprietary navigation systems are also proposing the non-binary LDPC codes as the forward error correction schemes. The structure of such LDPC codes is different from the regular LDPC codes that we use in other wireless standards and, encoder and decoding algorithms designed for them do not work. There is a need to develop the efficient encoder and decoder algorithms for non-binary LDPC codes used in satellite navigation systems for improving the position estimation accuracy.

## Project Description

Use [Communications Toolbox™](https://www.mathworks.com/help/comm/) to implement the non-binary LDPC encoder and decoder functions and benchmark the bit error rate (BER) performance in Additive White Gaussian Noise (AWGN) channel.
Implement an LDPC decoder to process the soft Log Likelihood Ratios (LLR) values at the receiver using iterative algorithms. 
The basic navigation frame used in Beidou is as shown in the figure below.

| ![navigationMessage](navigationMessage.png) | 
|:--:| 
| ***Figure1**: Navigation Message* |

Each frame before error correction encoding has a length of 288 bits, containing PRN (6 bits), Message Type (Mestype, 6 bits), Seconds Of Week (SOW, 18 bits), message data (234 bits), and CRC check bits (24 bits). 64-ary LDPC(96, 48) encoding is applied on the navigation message and the resultant encoded frame length becomes 576 bits or 96 codewords (6-bit). The LDPC check matrix as described in [1], is a sparse matrix Ｈ<sub>48,96</sub> of 48 rows and 96 columns defined in GF(2<sup>6</sup>) domain with the primitive polynomial being p(x) = 1 + x + x<sup>6</sup>. The encoded data is BPSK modulated and 24 preamble symbols are prepended to form the transmitted frame.

| ![transmittedMessage](transmittedMessage.png) | 
|:--:| 
| ***Figure2**: Transmitted message symbols* |

At the receiver, assuming the perfect time and frequency synchronization, demodulated symbols are passed through 64-ary LDPC decoder using extended min-sum algorithm [1], implemented in GF(2<sup>6</sup>) domain to extract the 48 codewords (288 bits) of Navigation message. 

Suggested steps:
-	Implement 64-ary LDPC encoder in MATLAB following the steps given in Annex [1] using GF arithmetic from Communications Toolbox.
-	Test this encoder data using the reference values provided in [1].
-	Implement a corresponding 64-ary LDPC decoder following the steps given in Annex [1].
-	Form the navigation message as shown in Figure 1 and pass it through 64-array LDPC encoder and perform BPSK modulation using [BPSK modulator](https://in.mathworks.com/help/comm/ref/comm.bpskmodulator-system-object.html) on the encoded data and pass through AWGN channel.  
-	Run a bit error rate (BER) simulation to benchmark the performance with standard provided results by replacing LDPC encoder and decoder functions in the [Communications Toolbox example](https://www.mathworks.com/help/comm/gs/accelerating-ber-simulations-using-the-parallel-computing-toolbox.html) with 64-ary LDPC encoder and decoder. 

Advanced project work:

Profile the MATLAB code using [MATLAB profiler](https://in.mathworks.com/help/matlab/matlab_prog/profiling-for-improving-performance.html) to improve the speed of execution by comparing it with that of binary LDPC code from Communications Toolbox.
Implement M-ary LDPC encoder and decoder to support other message lengths defined in Beidou standard.



## Background Material

- Binary LDPC [encoder](https://www.mathworks.com/help/comm/ref/comm.ldpcencoder-system-object.html) and [decoder](https://www.mathworks.com/help/comm/ref/comm.ldpcdecoder-system-object.html) in [Communications Toolbox](https://www.mathworks.com/help/comm/)
- [Performance evaluation of binary LDPC coder in AWGN channel in Communications Toolbox](https://www.mathworks.com/help/comm/ref/comm.ldpcdecoder-system-object.html#mw_201f2d2d-1059-4774-8e70-4f1a9e0a7cdf)
- [Accelerating BER Simulations Using the Parallel Computing Toolbox](https://www.mathworks.com/help/comm/gs/accelerating-ber-simulations-using-the-parallel-computing-toolbox.html)
- [Profile Your Code to Improve Performance](https://www.mathworks.com/help/matlab/matlab_prog/profiling-for-improving-performance.html)

Suggested readings:

[1] [BeiDou Navigation Satellite System Signal In Space Interface Control, Aug 2017 (Sections 6.2.2.2, 6.2.2.3, 6.2.2.4, and Annex)](http://en.beidou.gov.cn/SYSTEMS/ICD/201806/P020180608522414961797.pdf)

[2] Lin, S., & Costello, D. J. (1983). Error control coding: Fundamentals and applications. Englewood Cliffs, N.J: Prentice-Hall. 


## Impact

Accelerate the development of modern satellite navigation receivers.

## Expertise Gained 

5G, GNSS, Wireless Communication


## Project Difficulty

Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/23) to ask/answer questions, comment, or share your ideas for solutions for this project.
## Proposed By
[nkchavali](https://github.com/nkchavali)

## Project Number

192
