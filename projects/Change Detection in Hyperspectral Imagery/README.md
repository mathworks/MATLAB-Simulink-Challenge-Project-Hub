**Project 210:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/hyperspectralimage.png"  width=500 /></td>
<td><p><h1>Change Detection in Hyperspectral Imagery</h1></p>
<p> Develop an efficient method for detecting small changes on Earth surface using hyperspectral images. </p>
</table>

## Motivation

The Earth’s surface undergoes constant changes over time due to several influences including ones from the increasing human population. Hence, an analysis of the changes is necessary for better management of natural resources and preventing disasters. Change detection is the procedure of analyzing the changes between two Hyperspectral images of the same topographical zone taken at two different times.
Hyperspectral imaging (HSI) is used in distinctive surveillance and monitoring applications like spread of woodland fires, diagnosing crop yield issues, and environment monitoring amongst others. HSI integrates imaging and spectroscopic techniques into one system and captures a set of monochromatic images containing many contiguous wavelengths that go beyond what the human eye can see. Each wavelength captures a different property from the scene such as color, intensity, material property, presence of water vapor, vegetation, etc. The hyperspectral image can then be processed and analyzed to infer and reason about the contents of the scene as well as biological and chemical processes.


## Project Description

Using [Image Processing Toolbox™ Hyperspectral Imaging Library](https://www.mathworks.com/matlabcentral/fileexchange/76796-image-processing-toolbox-hyperspectral-imaging-library) develop a change detection method based on spectral signature analysis. Change detection methods identify anomalous changes between scenes by suppressing background and accentuating changed regions. Certain changes such as vegetation and illumination as well as mis-registration make the change detection process difficult.

The developed technique should
1.	addresses the problem of multiple changes
2.	utilize the spectral information at each pixel 
3.	resolves the ambiguity at mixed pixels, pixels corresponding to regions that have multiple materials

Links to sample datasets for demonstrating change detection are provided below. A sequence of suggested steps for starting with the downloaded data and generating the change detection mask are also presented below.

Sample Datasets:
1.	[ONERA satellite change detection](https://ieee-dataport.org/open-access/oscd-onera-satellite-change-detection)
2.	[Hyperspectral change detection dataset](https://citius.usc.es/investigacion/datasets/hyperspectral-change-detection-dataset)
3.	[GETNET](https://drive.google.com/file/d/1cWy6KqE0rymSk5-ytqr7wM1yLMKLukfP/view)


Suggested steps:
1.	Download a suitable dataset either from the list above or other sources
2.	Calibrate or correct  atmospheric errors in the hyperspectral data (there are many functions for calibration and correction in MathWorks Hyperspectral Imaging Library)
3.	Pseudo-binary change detection to extract initial changes, see reference [1,3] for more details
4.	Automatically cluster the changed endmembers based on hierarchical analysis and spectral matching, see reference [4] for more details
5.	Generate final change detection map

Project variations:
Use deep learning methods to train an end-member detector from hyperspectral data. Leverage this network to segment the hyperspectral data and generate the change detection map.


## Background Material

Hyperspectral imaging libraryExamples demonstrating how to use the hyperspectral library for relevant classification needs:
1.	[Hyperspectral image classification](https://www.mathworks.com/help/images/classify-hyperspectral-image-using-sam-metric.html)
2.	[Hyperspectral image classification using deep learning](https://www.mathworks.com/help/images/hyperspectral-image-classification-using-deep-learning.html)

References: 

[1] S. Liu, L. Bruzzone, F. Bovolo and P. Du, “Hierarchical change detection in multitemporal hyperspectral images,” Geoscience and Remote Sensing, IEEE Transactions on, vol.53, no.1, pp:244–260, 2015.

[2] Mahdi Hasanlou & Seyd Teymoor Seydi (2018): Hyperspectral change detection: an experimental comparative study, International Journal of Remote Sensing.

[3] Huifu Zhuang, Zhixiang Tan, Kazhong Deng & Guobiao Yao (2018) Change detection in multispectral images based on multiband structural information, Remote Sensing Letters, 9:12, 1167-1176.

[4] S. Liu, L. Bruzzone, F. Bovolo and P. Du, "Unsupervised hierarchical spectral analysis for change detection in hyperspectral images," 2012 4th Workshop on Hyperspectral Image and Signal Processing: Evolution in Remote Sensing (WHISPERS), Shanghai, China, 2012.

[5] Seyd Teymoor Seydi & Mahdi Hasanlou (2017) A new land-cover match-based change detection for hyperspectral imagery, European Journal of Remote Sensing, 50:1, 517-533.

## Impact

Revolutionize the management of natural resources, monitoring, and preventing of disasters, going beyond what is visible to the naked eye.

## Expertise Gained 

Computer Vision, Image Processing, Deep Learning


## Project Difficulty

Bachelor, Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/42) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

210
