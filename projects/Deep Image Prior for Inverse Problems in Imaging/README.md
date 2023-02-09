**Project 244:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/dip.png"  width=500 /></td>
<td><p><h1>Deep Image Prior for Inverse Problems in Imaging</h1></p>
<p>Use the Deep Image Prior to solve inverse problems in imaging.</p>
</table>

## Motivation

Inverse problems in imaging arise when we wish to recover the input image to a system that transforms or corrupts it, given some measurement of its output. Examples of this include&#58; denoising, deblurring, super-resolution, in-painting, X-Ray tomography and many more. Typically, these problems are ill-posed and extra information is required to successfully recover the input from the measurement. This extra information is usually about the structure of the input image – it should usually belong to a class of `natural images’. Inverse problems in imaging are at the core of many industries; from medical devices to astronomical imaging to defense.  

The Deep Image Prior is a way to use a deep neural network to promote natural image structure in the solution to an inverse problem. It also has one enticing, and surprising, feature&#58; no training, pre-training, or training data, is required. 

## Project Description

Use the [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) to implement the Deep Image Prior and use it solve one or more inverse problems in imaging.  

The suggested steps are as follows: 

- Learn about the [Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior). 

- Choose one or more inverse problems to solve and implement the forward operator, e.g.: 

  - Denoising -&gt; forward operator adds noise to the input. 

  - Deblurring -&gt; forward operator blurs (convolves) the input. 

  - Super-resolution -&gt; forward operator downsizes the input image. 

  - In-painting -&gt; forward operator zeroes some areas in the input image. 

- Select a network architecture (e.g., [U-Net](https://www.mathworks.com/help/vision/ref/unetlayers.html)) or implement the exact network defined in the Deep Image Prior paper. 

- Optimize the network weights to minimize the appropriate cost function to recover the input image given a noisy vector as a fixed input. 

Advanced extensions: 

- Consider inverse problems involving a more complex or worse-posed forward model, for example: 

  - X-Ray tomography -&gt; forward operator is the [Radon transform](https://www.mathworks.com/help/images/ref/radon.html) of the input image. 

  - Compressed sensing -&gt; forward operator is a random matrix with fewer rows than columns. 

  - Some combination of any of the suggest items above, or others (e.g., deblurring + denoising). 

- Test out different network architectures, different inputs, etc. 

## Background Material

[What is an inverse problem](https://tristanvanleeuwen.github.io/IP_and_Im_Lectures/what_is.html) 

[Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior) and [Paper](https://sites.skoltech.ru/app/data/uploads/sites/25/2018/04/deep_image_prior.pdf) 

[Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) 

[U-Net in MATLAB](https://www.mathworks.com/help/vision/ref/unetlayers.html) 

[Custom training loop in MATLAB](https://www.mathworks.com/help/deeplearning/ug/define-custom-training-loops-loss-functions-and-networks.html) 

## Impact

Implement the Deep Image Prior to provide high-quality solutions to inverse problems in imaging that are ubiquitous in industry.  

## Expertise Gained 

Artificial Intelligence, Computer Vision, Deep Learning, Image Processing, Machine Learning, Neural Networks, Optimization, Signal Processing

## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/80) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

244
