Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Fluid%20Flow%20Simulation%20Using%20Physics-Informed%20Neural%20Networks&tfa_2=252)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Fluid%20Flow%20Simulation%20Using%20Physics-Informed%20Neural%20Networks&tfa_2=252)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/cfd.jpg"  width=500 /></td>
<td><p><h1>Fluid Flow Simulation Using Physics-Informed Neural Networks</h1></p>
<p>Develop a Physics Informed Neural Network (PINN) for fluid flow simulation. </p>
</table>

## Motivation

Fluid dynamics is fundamental to industries like aerospace, automotive, civil engineering, and environmental science. Efficiently predicting fluid flow behavior is essential for designing systems that optimize performance, enhance safety, and reduce environmental impact. For instance, optimizing airflow around vehicles in the aerospace and automotive sectors can significantly improve fuel efficiency and lower emissions. In civil engineering, accurate fluid flow models are crucial for designing water distribution systems and managing flood risks. Furthermore, understanding pollutant dispersion in air and water is vital for assessing environmental impact in environmental science.
Traditional computational fluid dynamics (CFD) methods, though accurate, often require significant computational resources and time, especially for complex geometries. Physics-informed neural networks (PINNs) offer a promising alternative by embedding physical laws, such as the Navier-Stokes equations, into the training procedure of neural network models. Once the network is trained, this approach can potentially reduce computational costs while maintaining accuracy, making it highly relevant for industry applications.

## Project Description
This project aims to develop a PINN model to simulate fluid flow in simple geometries, such as pipes or channels. The project will involve creating a neural network that incorporates the Navier-Stokes equations, which govern fluid flow. The model will be trained and validated using available data or simplified scenarios. 

Suggested Steps:
1.	Data Collection and Preprocessing:
    - Gather data for training and validation. Consider using publicly available datasets, such as the ones from [Kaggle](https://www.kaggle.com/datasets/ryleymcconkey/ml-turbulence-dataset/versions/3), [Johns Hopkins Turbulence Databases](https://turbulence.pha.jhu.edu/), [Stanford](https://hai.stanford.edu/news/blastnet-first-large-machine-learning-dataset-fundamental-fluid-dynamics), [DeepCFD](https://github.com/mdribeiro/DeepCFD) etc.
    -	Identify the boundary conditions and parameters relevant to the scenario specified by the chosen dataset.
    -	Preprocess the data using MATLAB® to ensure it is suitable for neural network training, utilizing functions for normalization and data cleaning.
2.	Model Development:
    -	Design a neural network architecture suitable for integrating physical laws using [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html). Consider a Multilayer Perceptron (MLP)  architecture  with a custom loss function that includes the residuals of the Navier-Stokes equations.
    -	Embed the PDEs, such as the Navier-Stokes equations, into the loss function by calculating the residuals of the PDEs at collocation points (points in the domain where the equations are evaluated). The loss function typically includes terms that penalize deviations from the PDE residuals, as well as terms for boundary and initial conditions.
3.	Training and Validation:
    - Train the PINN model using the collected data, optimizing for accuracy and computational efficiency. Use the Deep Learning Toolbox for training the neural network in a training loop utilizing functions like [adamupdate](https://www.mathworks.com/help/deeplearning/ref/adamupdate.html) or [lbfgsupdate](https://www.mathworks.com/help/deeplearning/ref/lbfgsupdate.html), and computing and visualizing validation errors.
    - Validate the model's performance against known solutions or experimental data, using MATLAB to compare results and visualize errors.
4.	Analysis and Interpretation:
    -	Analyze the results to assess the model's accuracy and reliability. Use MATLAB's plotting functions to visualize flow fields and compare them with traditional CFD results.
    -	Compare the performance of the PINN model with traditional CFD methods, discussing computational efficiency and accuracy.

Advanced project work:
- Extend this to an inverse problem with unknown parameter, e.g. viscosity.
- Improve PINN training, using novel techniques such as the ones described in [1]. 


## Background Material

-	[What Are Physics-Informed Neural Networks (PINNs)?](https://www.mathworks.com/discovery/physics-informed-neural-networks.html)
-	[Deep Learning Toolbox](https://jp.mathworks.com/products/deep-learning.html)
-	[Physics-Informed-Neural-Networks-for-Heat-Transfer]( https://github.com/matlab-deep-learning/Physics-Informed-Neural-Networks-for-Heat-Transfer).
-	[Using Physics-Informed Machine Learning to Improve Predictive Model Accuracy](https://www.mathworks.com/company/user_stories/case-studies/using-physics-informed-machine-learning-to-improve-predictive-model-accuracy.html)
-	[Physics-Informed Neural Networks with MATLAB](https://www.youtube.com/watch?v=RTR_RklvAUQ)
-	[Solve PDE Using Physics-Informed Neural Network](https://www.mathworks.com/help/deeplearning/ug/solve-partial-differential-equations-with-lbfgs-method-and-deep-learning.html)
-	[Solve Poisson Equation on Unit Disk Using Physics-Informed Neural Networks](https://www.mathworks.com/help/pde/ug/solve-poisson-equation-on-unit-disk-using-pinn.html)

Suggested readings:

[1] Wang, Sifan et al. “An Expert's Guide to Training Physics-informed Neural Networks.” ArXiv abs/2308.08468 (2023). [[pdf]]( https://arxiv.org/pdf/2308.08468).

[2] Raissi, Maziar, Paris Perdikaris, and George E. Karniadakis. "Physics-informed neural networks: A deep learning framework for solving forward and inverse problems involving nonlinear partial differential equations." Journal of Computational Physics 378 (2019): 686-707.


## Impact

Transform fluid dynamics with neural networks driving impactful innovations across industries.

## Expertise Gained 

Artificial Intelligence, Deep Learning, Modeling and Simulation, Neural Networks

## Project Difficulty

Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/117) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

252
