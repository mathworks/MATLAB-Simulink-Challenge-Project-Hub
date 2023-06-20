**Project 243:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/audio_image.png"  width=500 /></td>
<td><p><h1>Music Composition with Deep Learning</h1></p>
<p>Design and train a deep learning model to compose music.</p>
</table>

## Motivation

Generative deep learning models have shown promise in several areas, particularly text and image generation. A musical piece can be described by a language, is often highly structured, and pleasing music lies in a low-dimensional subspace embedded within all possible combinations of notes and sounds. Thus, it is plausible that similar models could be applied to music composition without human supervision. This is an enticing prospect for, e.g., media production companies, as bespoke music could be generated for any purpose without relying on ‘stock music’ marketplaces.  

## Project Description

Use the [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) and the [Audio Toolbox™](https://www.mathworks.com/help/audio/musical-instrument-digital-interface-midi.html?s_tid=CRUX_lftnav) to create a generative model that can compose and play back a melody. A melody can be represented using the [MIDI](https://en.wikipedia.org/wiki/MIDI) format to describe a collection of musical notes, which come together to form a piece. One option is to train a generative model on collections of MIDI sequences to predict the next note(s) in a sequence, and this can then be used recurrently to compose entirely new melodies. 

Suggested steps are: 

-Perform a literature review and decide on a network architecture to use (e.g., an LSTM). 

- Decide on the style of music and download an appropriate training data set, e.g., a [collection of classical music](https://paperswithcode.com/search?q_meta=&amp;q_type=&amp;q=midi+dataset) 

- Load and pre-process the training data as necessary. 

- Design and train a generative network on the training data set.  

- Play the resultant sequence, either by writing a MIDI file and playing it outside of MATLAB, or synthesizing audio with the [Audio Toolbox™](https://www.mathworks.com/help/audio/musical-instrument-digital-interface-midi.html?s_tid=CRUX_lftnav). 

- Assess the quality of the outputs from the network and make adjustments as necessary. 

Advanced extensions: 

- Instead of a melody, try to generate chord sequences. This could then be combined with the melody to form a more sophisticated piece. 

- Instead of a single melody, try to generate a polyphonic piece, or a piece with multiple instruments. This could include percussion. 

- Make use of note properties other than pitch, such as velocity (volume). This can produce more expressive pieces.  

## Background Material

[Long Short-Term Memory Networks in MATLAB](https://www.mathworks.com/help/deeplearning/ug/long-short-term-memory-networks.html) 

[Example Project](https://www.mathworks.com/matlabcentral/fileexchange/50791-diffusion-music?s_tid=srchtitle) Includes tools useful for reading and writing MIDI files. 

[Design and play a MIDI synthesizer](https://www.mathworks.com/help/audio/ug/midi-synthesizer.html) 

[1] Allen Huang and Raymond Wu, [Deep Learning for Music](https://cs224d.stanford.edu/reports/allenh.pdf) 

[2] Carlos Hernandez-Olivan and Jose R. Beltran, [Music Composition with Deep Learning: A Review](https://arxiv.org/abs/2108.12290), arXiv:2108.12290 

## Impact

Generative music models can be used to create new assets on demand.

## Expertise Gained 

Artificial Intelligence, Deep Learning, Machine Learning, Neural Networks, Audio

## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/78) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

243
