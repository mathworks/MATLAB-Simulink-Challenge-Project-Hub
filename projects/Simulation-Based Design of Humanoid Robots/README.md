**Project 170:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/humanoidRobot.png"  width=500 /></td>
<td><p><h1>Simulation-Based Design of Humanoid Robots</h1></p>
<p> Develop and use models of humanoid robots to increase understanding of how best to control them and direct them to do useful tasks.</p>
</table>

## Motivation

Robots that can be repurposed are predicted to revolutionize many things, ranging from the construction industry to healthcare. Although great progress has been made both in actuation and sensing hardware, understanding how to control these types of robot is still in its infancy. Fast-simulating models provide a way to explore solutions to this, whether it be related to lower-level motion control or to higher-level task programming using AI.

## Project Description

This project could take on many different forms depending on your interests.  A good starting point is the humanoid robot example already modeled in Simscape Multibody™ that is linked from the background material section below. Review this model and also the associated MATLAB® live scripts that design algorithms that make the robot walk. Having done this, it is then suggested that you pick at least one modeling task and one research task as the basis of your project. Some ideas for modeling and research tasks are listed below.

**Modeling tasks:**
- Add more degrees of freedom e.g. in the hip and in the foot. Currently the robot relies on having a wide flat foot and flat ground surface. Adding another degree of freedom at the foot will help with balance when coupled with suitable control.
-	Add actuation and sensor models. The model currently assumes ideal actuators that deliver demanded forces and torques. Replacing these with models of real actuators will bring some more real-world realism into the model. You will find examples of electrical, hydraulic, and pneumatic actuation in Simscape™ product examples to help you get started.
-	Automate definition of the robot from MATLAB to support easy sizing of the robot.
  
  
 **Research tasks:**
-	Develop algorithms to manage balance as measured by, for example, the minimum force required to make it fall over. You might want to tackle this task before trying any of the motion tasks to gain understanding and/or to provide an inner-loop balance feedback system.
-	Develop algorithms to perform specific tasks such as walking, stopping, crouching, jumping, reaching/leaning. Consider using conventional approaches and/or AI methods such as reinforcement learning.
-	Develop motion planning and control algorithms to perform more complex tasks. For example, can you get the robot to hit an incoming cricket ball or baseball? In the context of healthcare, can you develop solutions to one robot helping stabilize a second one that has more limited actuator capability? For construction, can you get two robots to coordinate lifting an I-beam from its two ends? Again, consider using conventional approaches and/or AI methods such as reinforcement learning and deep learning.
-	Research controller architectures. Humans and animals have a structure of multiple nested feedback loops; would this help with a robot’s balance too? What is the role for pattern generators and feedforward in robotics versus other approaches?
-	Does including natural mechanical compliance into the actuation system help or hinder control? Under what circumstances? This may be particularly pertinent to maintaining balance. How does compliance help with efficiency of locomotion?


## Background Material

It is suggested that you start with this [humanoid robot example](https://www.mathworks.com/help/physmod/sm/ug/humanoid_walker.html).
The example includes two approaches to getting the robot to walk.

For electrical actuation modeling, take a look at:
-	[Motor & Drive modeling](https://www.mathworks.com/help/physmod/sps/ref/motordrivesystemlevel.html) 
-	[RC Servo modeling](https://www.mathworks.com/help/physmod/sps/ref/rcservo.html) 
-	[DC Motor](https://www.mathworks.com/help/physmod/sps/ref/dcmotor.html) 

For hydraulic and pneumatic actuation, take a look at:
-	[Air muscles (McKibben actuation)](https://www.mathworks.com/help/physmod/hydro/ug/antagonistic-mcKibben-muscle-actuator.html)
-	[Hydraulic actuation](https://www.mathworks.com/help/physmod/hydro/ug/creating-a-simple-model.html) 

For control and AI (including reinforcement learning) see:
-	[Control Systems Toolbox](https://www.mathworks.com/products/control.html)
-	[Reinforcement Learning Toolbox](https://www.mathworks.com/products/reinforcement-learning.html)
-	[Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
-	[Optimization Toolbox](https://www.mathworks.com/products/optimization.html)
-	[Global Optimization Toolbox](https://www.mathworks.com/products/global-optimization.html)


## Impact

Accelerate the deployment of humanoid robots to real-world tasks including in healthcare, construction, and manufacturing

## Expertise Gained 

Artificial Intelligence, Robotics, Control, Cyber-Physical Systems, Deep Learning, Humanoid, Human-Robot Interaction, Machine Learning, Mobile Robots, Modeling and Simulation, Optimization, Reinforcement Learning


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/19) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Proposed By
[rhyde005](https://github.com/rhyde005)

## Project Number

170
