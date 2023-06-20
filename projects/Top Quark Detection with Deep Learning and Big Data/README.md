**Project 238:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/topQuark.png"  width=500 /></td>
<td><p><h1>Top Quark Detection with Deep Learning and Big Data</h1></p>
<p>Develop a predictive classifier model able to discriminate jets produced by top quark decays from the background jets</p>
</table>

## Motivation

Ability to detect and retain only interesting particle jets (that usually are rare events) and throw away all the boring jets (that are produced within well understood standard model) is crucial in searching for new physics (rare events), especially when high luminosity upgrade on Large Hadron Collider (LHC) will generate petabytes of data daily. 

 Modern deep learning algorithms trained on jet images out-perform standard physically-motivated feature driven approaches to jet tagging developed by physicists previously.
 
After the high-luminosity upgrade of LHC collider, most efficient Deep Learning models will be deployed on CERN triggers that will automatically filter (in real-time) background jets and retain only desired jets. This will intelligently reduce the amount of data to be stored for discovering new fundamental physics by more than 80%, avoiding deluge of data. 


## Project Description

Aim of the project is to develop a predictive classifier model, based on deep convolutional neural network trained on publicly available big data, that can discriminate efficiently jets produced by top quark decays (signal) from the background jets (noise). 

Work with the [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) products to develop and train, validate, and test a deep learning classification network using MATLAB® and publicly available data on [CERN’s Zenodo database](https://zenodo.org/record/2603256#.Y20xysvMLmE)
 
Suggested steps: 

1.	Become familiar with the MATLAB based deep learning examples listed in the Background Material section below. 
2.	Download Live Script on: [Deep Learning for Real-Time Top Quark Jet Tagging](https://www.mathworks.com/matlabcentral/fileexchange/105635-deep-learning-for-real-time-top-quark-jet-tagging?s_tid=srchtitle)
3.	Download particle jets open datasets from: Kasieczka, Gregor, Plehn, Tilman, Thompson, Jennifer, &amp; Russel, Michael. (2019). Top Quark Tagging Reference Dataset (v0 (2018_03_27)) [Data set]. Zenodo. https://doi.org/10.5281/zenodo.2603256
4.	Import datasets as pandas dataframes and save as parquet files.
Run Python directly from MATLAB with the following commands:
```
pyrun("import pandas as pd") 
pyrun("df=pd.read_hdf('train.h5','table')")
pyrun("df.to_parquet('jets.parquet.gzip', compression='gzip')")
```
5.	Use [parquet datastore]( https://www.mathworks.com/help/matlab/ref/matlab.io.datastore.parquetdatastore.html) and [Tall Array](https://www.mathworks.com/help/matlab/tall-arrays.html), to manage and preprocess the particle jets data and arrange it into 2D grayscale images. 
6.	Build a deep convolutional neural network, analogous to the one in: [Deep Learning for real-Time Top Quark Jet Tagging](https://www.mathworks.com/matlabcentral/fileexchange/105635-deep-learning-for-real-time-top-quark-jet-tagging?s_tid=srchtitle) using [Deep Network designer app](https://www.mathworks.com/help/deeplearning/ref/deepnetworkdesigner-app.html) and train network using training datasets.
7.	Check accuracy of the network on test datasets. Use [imageDatastores](https://www.mathworks.com/help/matlab/ref/matlab.io.datastore.imagedatastore.html), where label sources come from folder names.

Project variations: 

1.	Instead of a simple 3-layer CNN, Adopt more complex deep learning networks such as resnet18. Call blank architecture of resnet18 and train its weights. GPU can be handy when training more complicated deep networks, especially when dealing with  big data. 
2.	Instead of gray-scale images use additional variables of the jets and encode them into the color of the image. In practice researchers use up to 7 or 8 colors.
 
Advanced project work: 

Run your model in real time. Using [Deep Learning HDL Toolbox™](https://www.mathworks.com/products/deep-learning-hdl.html) generate HDL code for deploying model on FPGA, following steps described in: [Deep Learning for Real-Time Top Quark Jet Tagging](https://www.mathworks.com/matlabcentral/fileexchange/105635-deep-learning-for-real-time-top-quark-jet-tagging?s_tid=srchtitle)


## Background Material

For Deep Learning:
-	[Get started with Deep Learning Toolbox](https://www.mathworks.com/help/deeplearning/examples.html?category=getting-started-with-deep-learning-toolbox&exampleproduct=all&s_tid=CRUX_lftnav) for simple examples of designing and training deep learning networks. 
-	[Deep Learning for Top Quark Jet Tagging, without using Big Data](https://www.mathworks.com/matlabcentral/fileexchange/105635-deep-learning-for-real-time-top-quark-jet-tagging?s_tid=srchtitle) 

For Big Data:
-	[Datastore for Parquet files](https://www.mathworks.com/help/matlab/ref/matlab.io.datastore.parquetdatastore.html) 
- [Tall Array for working with Big Data](https://www.mathworks.com/help/matlab/ref/tall.tall.html) 


## Impact

Reduce the interference of background jets and help the discovery of new fundamental physics

## Expertise Gained 

Artificial Intelligence, Big Data, Deep Learning, Physics 


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/74) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

238
