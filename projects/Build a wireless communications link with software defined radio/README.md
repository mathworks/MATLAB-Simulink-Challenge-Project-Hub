**Project 162:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/SDR.png"  width=500 /></td>
<td><p><h1>Build a Wireless Communications Link with Software-Defined Radio</h1></p>
<p>Gain practical experience in wireless communication by designing inexpensive software-designed radios.</p>
</table>

## Motivation

The world has gone wireless! So many bits flying through the air :-). We all communicate primarily wirelessly now, from our smartphones, to our cars and robots, even our appliances and smoke alarms.
Learn how to transmit digital data through the air using MATLAB, RF signals, and software-defined radio (SDR).
Industry needs engineers with wireless experience due to use of wireless signals in so many different applications. This project will give you practical experience transmitting
and receiving wireless signals with inexpensive software-defined radios. You will learn about propagation loss, synchronization loss, and many other practical aspects
of wireless data transmission.


## Project Description

Using MATLAB or Simulink as a simulation platform, build a unidirectional wireless communications link. Transmit and receive over-the-air (OTA) signals with a suitable
software-defined radio such as a USRP or ADALM-Pluto. Use [Communications Toolbox™](https://www.mathworks.com/products/communications.html) capabilities to implement modulation, error control coding, and synchronization.
Choose your design criterion: maximize transfer speed, maximize reliability, or maximize confidentiality/security, or you can pick your own optimization criteria. 

Suggested steps:

1.  Select source data and break down into bundles of bits. 

2.  Design OTA transmission scheme, including modulation type and optionally, forward error correction.

3.  Model a channel in software, with all the impairments expected in the actual link.

4.  Build corresponding receiver. Receiver will have to accomplish carrier frequency synchronization, timing synchronization, and frame synchronization.

5.  Decode the source bits. 

6.  When the link works as expected in software, remove the channel model and transmit and receive using SDR hardware.

7.  Continue from there to optimize your design for selected criteria such as throughput, or reliability, or security, or your own design criterion.

Project variations:

1.  Start with a single-carrier modulation scheme that requires no carrier synchronization, like DPSK.

2.  Heavily oversample the signal, so that timing synchronization is straightforward.

3.  Once that link is built and verified, reduce the oversampling so that a timing sync loop is required.

4.  Once the timing loop is verified, use a modulation scheme that does require carrier synchronization, like PSK or QAM.

5.  If you prefer to start with an OFDM system, consider using the Schmidl-Cox algorithm ([[1]](#schmidl)). 

Advanced project work:

Develop an ad hoc network with multiple transceiver nodes and OFDM as the underlying PHY.  See [Packetized Modem with Data Link Layer](https://www.mathworks.com/help/comm/ug/packetized-modem-with-data-link-layer.html) for reference.  

## Background Material

- [Software-Defined Radio (SDR)](https://www.mathworks.com/discovery/sdr.html)
- [QPSK Transmitter and Receiver - MATLAB](https://www.mathworks.com/help/comm/ug/qpsk-transmitter-and-receiver.html)
- [QPSK Transmitter and Receiver - Simulink](https://www.mathworks.com/help/comm/ug/qpsk-transmitter-and-receiver-in-simulink.html)
- [QPSK Transmitter with USRP Hardware - MATLAB](https://www.mathworks.com/help/supportpkg/usrpradio/ug/qpsk-transmitter-with-usrp-r-hardware.html)
- [QPSK Receiver with USRP Hardware - MATLAB](https://www.mathworks.com/help/supportpkg/usrpradio/ug/qpsk-receiver-with-usrp-r-hardware.html)
- [QPSK Transmitter with USRP Hardware - Simulink](https://www.mathworks.com/help/supportpkg/usrpradio/ug/qpsk-transmitter-with-usrp-r-hardware-1.html)
- [QPSK Receiver with USRP Hardware - Simulink](https://www.mathworks.com/help/supportpkg/usrpradio/ug/qpsk-receiver-with-usrp-r-hardware-1.html)

Suggested readings:
<a name="schmidl"></a>[1] Timothy M. Schmidl and Donald C. Cox, "Robust Frequency and Timing Synchronization for OFDM", IEEE Transactions on Communications, Vol. 45, No. 12, December 1997.

## Impact

Develop your own expertise in wireless technology and drive this megatrend forward, in industry and society.

## Expertise Gained 

5G, Low-Cost Hardware, Modeling and Simulation, Signal Processing, Software-Defined Radio, Wireless Communication

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/18) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By

[mw-mmclernon](https://github.com/mw-mmclernon)


## Project Number

162

