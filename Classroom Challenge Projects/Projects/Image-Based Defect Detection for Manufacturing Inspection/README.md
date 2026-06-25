<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/defectDetection.png"  width=500 /></td>
<td><p><h1>Image-Based Defect Detection for Manufacturing Inspection</h1></p>
<p>Build a MATLAB inspection pipeline to detect manufacturing defects  image processing.</p>
</table>

## Motivation
Modern manufacturing inspection needs two things at once: traceable evidence (why a part failed) and robust decisions under normal variation (lighting, texture, small pose changes). A common industry approach is a hybrid workflow: use classical vision to standardize inputs and capture measurable “evidence,” then use a lightweight AI model to improve classification. This project gives students a practical, deployable pattern: preprocess → evidence → AI decision → test → report.

## Project Description
Use MATLAB to create a virtual inspection station that processes images of a single part type, produces defect evidence overlays and measurable features, and classifies parts using a pretrained network via transfer learning. You will then evaluate performance and robustness across a repeatable test suite.

### Suggested Steps:
Open the "ImageBasedDefectSystem_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project. More detailed implementation guidelines for each suggested task are provided in the Live Script file.

1. Explore and Organize Image Dataset
    - Your goal in this step is to define defect classes and labels (keep it small)
    - Load and inspect the images and labels from your chosen dataset (see below for recommended datasets) to understand the part types, defect classes, and data balance
    - Organize images and labels for use in the image classification workflow you will create

2. Build a Single-Image Inspection Function
    - Your goal in this step is to create a function that analyzes an image to identify and quantify suspected defects detected in the image. You're trying to answer the question: "What in the image looks suspicious?"
    - To build this function, you will need to:

        a. Standardize and preprocess the images (size, color, lighting, etc)
        
        b. Extract defect evidence by applying minimal image processing (e.g. an evidence mask that highlights where the suspected defect is)

        c. Compute a small set of interpretable measurements to quantify defect evidence (e.g. number of suspicious regions, largest region area, fraction of the image flagged)

3. Integrate an AI Classifier into your Single-Image Inspection Function
    - Your goal in this step is to use a MathWorks provided pretrained network (recommended: `resnet18`) to classify each part as either a PASS or FAIL, that will be part of the output of the function you began to build in the previous step
    - Train the AI classifier using transfer learning
    - The AI classifier should provide the main classification decision (PASS/FAIL) along with a confidence/probability score in that classification
    - The output of your function should combine both this AI prediction and the evidence metrics from the previous step into an easily interpretable result for the user

In other words, your image inspection function should integrate both classical evidence from image processing and an AI classification decision. The AI classifier provides the main decision (PASS/FAIL) while the classical evidence extraction provides interpretability, traceability, and sanity checks for that decision.

4. Evaluate Inspection System Performance
    - Now that you've built a hybrid inspection system that integrates classical evidence with an AI decision, your goal in this step is to test the system on a batch of images.
    - The results of this test should be summarized with a confusion matrix, report yield, and defect rates across the entire batch of images.

5. Test Robustness
    - Your goal in this step is to assess how your system performs under simulated variations.
    - You can simulate image inspection station variation by altering the lighting, blur, or noise in the images.
    - Evaluate the system's robustness by reporting how accuracy and false-reject rates change under this variations.

### Expected Results for Project Solution
- A single-image inspection function that returns a PASS/FAIL AI classification decision, a confidence score in the PASS/FAIL decision, and the evidence overlay and evidence metrics to support the AI decision
- A script for a batch test runner that that divides all data into a training set and a testing set, evaluates the trained AI model, and produces a confusion matrix and yield/defect summary
- Results from a robustness test where images were altered using changes to brightness/contrast, blur, and noise

### Optional Extension: AI-Based Segmentation (advanced; only if data is provided)
- AI image segmentation is **not required** for the core project. It becomes reasonable only if you have:
  - pixel-level ground truth masks, or
  - time to label masks using an app.
- If you do it, use the Image Labeler to create pixel labels and train a semantic segmentation network.
  - Label pixels using the Image Labeler / pixel labeling workflows:  
    - [Get Started with the Image Labeler](https://www.mathworks.com/help/vision/ug/get-started-with-the-image-labeler.html)
    - [Label Pixels for Semantic Segmentation](https://www.mathworks.com/help/vision/ug/label-pixels-for-semantic-segmentation.html)
    - Note: the Image Labeler supports pixel labeling tools and (in recent releases) options to assist labeling.
- Deliverable for the extension: a function `maskAI = segmentDefect(I)` and comparison vs classical evidence masks.

## Learning Outcomes
- Apply understanding of integrated classical-vision and AI inspection workflows and their role in modern manufacturing practice to design a fully automated inspection function.
- Analyze different forms of visual evidence to implement traceable defect‑evidence generation, with a design emphasis on the system's transparency, interpretability, and diagnostic insight.
- Evaluate inspection performance and robustness via a batch test suite, confusion matrix, yield/defect statistics, and perturbation tests (lighting, blur, noise).

## Suggested Background Material
### 1. Fundamentals of Automated Visual Inspection
Before working with defect detection, students should understand how visual inspection systems operate in industry. Key ideas include:
- The role of cameras, sensors, and lighting in producing reliable inspection images.
- How visual inspection is used to detect anomalies, classify defects, and measure quality attributes.

### 2. Classical Image Processing for Defect Detection
Before deep learning, defect detection was (and still is) heavily reliant on classical computer‑vision techniques. Students should understand:
- Thresholding (global/local), region segmentation, edge detection.
- Morphological operations (closing, filling, filtering small specks).
- How classical preprocessing stabilizes feature extraction under normal variation.

### 3. Datasets
Recommended datasets for implementing and evaluating the inspection system:
-  A dataset for benchmarking anomaly detection methods with a focus on industrial inspection - [MVTec AD](https://www.mvtec.com/research-teaching/datasets/mvtec-ad)
-  Images of defected production items - Kolektor Surface-Defect Dataset 2 ([KSDD2](https://www.vicos.si/resources/kolektorsdd2/))
-  A real-world industrial anomaly dataset - BeanTech Anomaly Detection Dataset (BTAD): [Paper](https://arxiv.org/pdf/2104.10036), [Dataset](http://avires.dimi.uniud.it/papers/btad/btad.zip).
-  A dataset aimed at benchmarking visual defect detection methods in industrial metal parts manufacturing - Metal Parts Defect Detection Dataset ([MPDD](https://github.com/stepanje/MPDD))

### 4. Deep Learning Fundamentals for Visual Inspection
Deep learning drives most modern AI‑based defect detection. Students should understand:
- CNN fundamentals: convolution, pooling, feature maps.
- Why transfer learning (e.g., using ResNet‑18) is effective for limited defect datasets.
- How data augmentation improves robustness to lighting, noise, blur, and pose variations. 

### 5. Feature Extraction and Defect Evidence Measurement
Many defect‑detection pipelines rely on interpretable, numeric descriptors of defect regions. Important concepts:
- Connected components and region properties (area, eccentricity, solidity).
- Texture measures, intensity distributions, edge density.
- Why features help provide explainable evidence and traceable inspection logs.

### 6. Robustness, Variability, and Evaluation of Inspection Systems
Real inspection stations face significant variability and industry requires inspection decisions to be justified. Students should understand:
- Why evidence overlays, metrics, and logs matter for traceability.
- Confusion matrices, yield summaries, defect frequency analyses.
- Differences between interpretable rule‑based gates and black‑box AI models.
- How robustness tests reveal system weaknesses.

### 7. MATLAB Fundamentals
- Reading images, resizing, grayscale conversion (`imread`, `imresize`, `rgb2gray`).
- Classical preprocessing:
    - Illumination correction (`imflatfield`, Gaussian background subtraction)
    - Contrast normalization (`adapthisteq`)
    - Filtering (`medfilt2`, `imgaussfilt`)
- Segmentation
    - Threshold‑based segmentation (`imbinarize`, `adaptthresh`).
    - Morphological cleanup (`bwareaopen`, `imclose`, `imfill`).
    - Connected components (`bwconncomp`), `regionprops`, intensity statistics (`mean2`, `std2`).
- Machine Learning / Deep Learning Basics
    - Transfer learning with pretrained networks (e.g., ResNet‑18).
    - Data augmentation & resizing using `augmentedImageDatastore`.
    - Training workflow using `trainNetwork`.
- Data Management for Classification
    - 'imageDatastore', labeling workflows, and using tables to store part labels.
    - Train/test splits (`splitEachLabel`).
- Evaluation & Reporting
    - Confusion matrices (`confusionmat`, `confusionchart`).

## MathWorks Tutorials
### Highly Recommended
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Image Processing Onramp](https://matlabacademy.mathworks.com/details/image-processing-onramp/imageprocessing)
- [Machine Learning Onramp](https://matlabacademy.mathworks.com/details/machine-learning-onramp/machinelearning)
- [Deep Learning Onramp](https://matlabacademy.mathworks.com/details/deep-learning-onramp/deeplearning)
### Other Recommended Tutorials
- [Pretrained Deep Neural Networks (classification, feature extraction, transfer learning)](https://www.mathworks.com/help/deeplearning/ug/pretrained-convolutional-neural-networks.html) 
- [Get Started with Transfer Learning](https://www.mathworks.com/help/deeplearning/gs/get-started-with-transfer-learning.html)  
- [`resnet18` documentation](https://www.mathworks.com/help/deeplearning/ref/resnet18.html) 
- [`augmentedImageDatastore` documentation](https://www.mathworks.com/help/deeplearning/ref/augmentedimagedatastore.html) 
- [Deep Learning Toolbox documentation](https://www.mathworks.com/help/deeplearning/index.html)
- [Create and Explore Datastore for Image Classification (example)](https://www.mathworks.com/help/deeplearning/ug/create-and-explore-datastore-for-image-classification.html) 
- [Get Started with the Image Labeler (ROI + pixel labels)](https://www.mathworks.com/help/vision/ug/get-started-with-the-image-labeler.html) (for the Optional Extension)
- [Label Pixels for Semantic Segmentation](https://www.mathworks.com/help/vision/ug/label-pixels-for-semantic-segmentation.html) (for the Optional Extension)
  
## Project Difficulty
- Intermediate
    - Community college transfer students
    - 3rd year undergraduate or above 

