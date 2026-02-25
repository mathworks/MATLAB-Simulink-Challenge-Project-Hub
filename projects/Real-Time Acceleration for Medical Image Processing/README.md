Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Real-Time%20Acceleration%20for%20Medical%20Image%20Processing&tfa_2=259)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Real-Time%20Acceleration%20for%20Medical%20Image%20Processing&tfa_2=259)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ultrasound.png"  width=500 /></td>
<td><p><h1>Real-Time Acceleration for Medical Image Processing</h1></p>
<p>Design a real-time medical imaging pipeline that uses Analog Devices high-speed ADCs, and NVIDIA Holoscan for deployment.</p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://www.analog.com/en/resources/courses-and-tutorials.html" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/ADIlogo.jpg" width="400" style="display: block; margin: 0 auto;"><br>
</a>

## Motivation

Modern medical imaging devices, such as portable ultrasound systems, must process large amounts of sensor data in real time while delivering clear, actionable output. This requires fast and optimized pipelines for signal acquisition, image reconstruction, enhancement, and increasingly, AI-based interpretation.
This project allows students to explore this full workflow using a realistic industry-style toolchain&#58; capturing analog signals with Analog Devices hardware (or simulated equivalents), designing algorithms in MATLAB, compiling them to CUDA using GPU Coder, and deploying them on edge hardware with Holoscan.


## Project Description

Build a real-time image processing and interpretation pipeline for a medical imaging use case such as ultrasound. Simulate or acquire analog imaging data, reconstruct an image, enhance it, and run a simple AI inference task — all within a Holoscan-deployed real-time streaming application.
When available, Analog Devices high-speed ADC hardware should be used for real data acquisition. If hardware access is limited, simulated or pre-recorded datasets that mimic ADC output may be used. The [ADI HoloHub GitHub example](https://github.com/analogdevicesinc/holohub/tree/main/applications/matlab_gpu_coder) (matlab_gpu_coder application) provides a reference implementation that can serve as a starting point.
While ultrasound imaging is the suggested application, other modalities (e.g., RF imaging, thermal imaging) may be explored provided the full acquisition-to-deployment workflow is preserved.

Suggested Steps
1.	**Image Reconstruction from Raw Sensor Data**
    -	Begin with pre-recorded (see Background material) or simulated data representing raw sensor output (e.g., ultrasound RF signals). If available, use an Analog Devices high-speed ADC board to capture real signals.
    -	Use capabilities from the [Phased Array System Toolbox]( https://www.mathworks.com/help/phased/index.html) in MATLAB to reconstruct a 2D ultrasound image from RF data. 
    -	Once validated, convert your MATLAB function into CUDA code using MATLAB GPU Coder. 
The ADI HoloHub example demonstrates a simple beamforming approach and may be used as a reference or starting point.
2.	**Image Enhancement:** After forming the image, apply basic enhancement techniques using the [Image processing Toolbox](https://www.mathworks.com/help/images/index.html) to improve quality. Common options include:
    -	Speckle noise reduction using a 2D median or Wiener filter (medfilt2, wiener2)
    -	Adaptive histogram equalization (adapthisteq)
    -	Edge-preserving smoothing (e.g., bilateral filtering - imbilatfilt)
    - Implement your enhancement algorithm in MATLAB and regenerate the CUDA code using GPU Coder.
    - Test your enhancements by applying them to several image frames and comparing visual output or performance.
3.	**AI-Based Detection or Classification:** Once the image is enhanced, introduce a basic AI task to add perception or decision-making capability. Options include:
    -	Using a pretrained model such as the breast lesion detection [example](https://www.mathworks.com/help/deeplearning/ug/breast-tumor-segmentation-from-ultrasound-using-deep-learning.html) 
    -	Build and train a Convolutional Neural Network (CNN) using the [Deep Learning Toolbox](https://www.mathworks.com/help/deeplearning/index.html) for ROI-based detection such as presence of a structure or pattern. Keep model lightweight to ensure real-time inference on GPU-capable edge devices.
    -	For dataset preparation and labeling:
        -	Use datasets from the [example](https://www.mathworks.com/help/deeplearning/ug/breast-tumor-segmentation-from-ultrasound-using-deep-learning.html) or from the background material to test and validate the model. 
        -	For labeling explore the [Medical Image Labeler]( https://www.mathworks.com/help/medical-imaging/ug/get-started-with-medsam-in-medical-image-labeler.html) app from the Medical Imaging Toolbox. For medical imaging you can use Semi-automated (requires bounding box) segmentation such as the Medical Segment Anything Model ([MedSAM]( https://www.mathworks.com/help/medical-imaging/ug/get-started-with-medsam-in-medical-image-labeler.html)) or a flexible solution Medical Open Network for AI ([MONAI](https://www.mathworks.com/help/medical-imaging/ug/get-started-with-monai-label-in-medical-image-labeler-app.html)) that supports both semi-automated and automated pipelines

4.	**CUDA Code Generation:** After developing and testing your entire image processing pipeline in MATLAB (including beamforming, enhancement, and AI detection), you will use GPU Coder to generate CUDA code suitable for real-time execution in a Holoscan pipeline. The [ADI HoloHub GitHub example](https://github.com/analogdevicesinc/holohub/tree/main/applications/matlab_gpu_coder) show how to how to develop Holoscan applications that uses CUDA code generated by [MATLAB GPU Coder](https://www.mathworks.com/products/gpu-coder.html)
5.	**Holoscan Integration**: Create a real-time processing pipeline using the NVIDIA Holoscan SDK, with operators representing:
    -	A data source (e.g., stream of RF or image frames)
    -	Your CUDA-accelerated processing operator (image formation + enhancement)
    -	A visualization or sink operator (e.g., Holoviz or file output)
Use the applications/matlab_gpu_coder example in the HoloHub repository to understand how MATLAB-generated CUDA code is integrated into a Holoscan operator.
6.	**Evaluate and Document Your System:**: Measure real-time performance:
    -	Latency per frame
    -	Inference throughput
    -	Visual quality (before/after enhancement)
Prepare a short summary and demo video showing your end-to-end system running with live or streamed data. Include diagrams showing your pipeline structure and operator flow.

**Advanced Project Work**

  -	Advanced AI-based segmentation (e.g., UNet models) for medical regions
  -	Motion analysis across frames using optical flow or RNNs
  -	Multi-model comparison (e.g., CNN vs. transformer inference)
  -	Hardware integration using real ADI ADCs and custom data acquisition software
  -	Extension to non-ultrasound modalities (e.g., thermal, RF imaging), as long as the core workflow remains intact


## Background Material

  -	[MATLAB GPU Coder Documentation](https://www.mathworks.com/products/gpu-coder.html)
  -	[NVIDIA Holoscan SDK](https://developer.nvidia.com/holoscan-sdk)
  -	[ADI HoloHub Example: matlab_gpu_coder](https://github.com/analogdevicesinc/holohub/tree/main/applications/matlab_gpu_coder)
  -	[MATLAB Image Processing Toolbox](https://www.mathworks.com/products/image.html)
  -	[Phased Array System Toolbox](https://www.mathworks.com/products/phased-array.html)
  -	[Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html)
  -	[Classify Breast Tumors from Ultrasound Images Using Radiomics Features](https://www.mathworks.com/help/medical-imaging/ug/classify-breast-tumors-from-ultrasound-images-using-radiomics-features.html)

Datasets:

-	Breast Ultrasound Images (BUSI) data set: Al-Dhabyani, Walid, Mohammed Gomaa, Hussien Khaled, and Aly Fahmy. “Dataset of Breast Ultrasound Images.” Data in Brief 28 (February 2020): 104863. https://doi.org/10.1016/j.dib.2019.104863. Download and unzip the d  dataset in MATLAB: zipFile = matlab.internal.examples.downloadSupportFile("image","data/Dataset_BUSI.zip");
-	Open access database of raw ultrasonic signals acquired from malignant and benign breast lesions: https://doi.org/10.5281/zenodo.545928 as described from this paper https://pubmed.ncbi.nlm.nih.gov/28859252/
-	Ultrasound Plane Wave Raw Data 75 Angles - Breast Phantom and Calibration Phantom Dataset: https://zenodo.org/records/7986407
-	Ultrasound Toolbox Datasets: https://www.ustb.no/ustb-datasets/


## Impact

Enable rapid medical image assessment to support faster diagnosis and earlier treatment decisions.

## Expertise Gained 

Artificial Intelligence, Embedded AI, Image Processing, Real-time medical imaging

## Project Difficulty

Master's, Doctoral

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/158) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

259
