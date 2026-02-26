<table>

<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/defectDetection.png"  width=500 /></td>

<td><p><h1>Image-Based Defect Detection for Manufacturing Inspection</h1></p>

<p>Build a MATLAB inspection pipeline to detect manufacturing defects  image processing.</p>

</table>

## Motivation
Modern manufacturing inspection needs two things at once: traceable evidence (why a part failed) and robust decisions under normal variation (lighting, texture, small pose changes). A common industry approach is a hybrid workflow: use classical vision to standardize inputs and capture measurable “evidence,” then use a lightweight AI model to improve classification. This project gives students a practical, deployable pattern: preprocess → evidence → AI decision → test → report.

## Project Description
Create a virtual inspection station that processes images of a single part type, produces defect evidence overlays and measurable features, and classifies parts using a pretrained network via transfer learning. You will then evaluate performance and robustness across a repeatable test suite.

Your solution must include:
- A single-image inspection function that outputs PASS/FAIL, defect label (optional), confidence score, and evidence overlay
- A batch test runner that produces a confusion matrix and yield/defect summaries
- A pretrained-network workflow using a **MathWorks provided pretrained network** (recommended: `resnet18`)

### Suggested Steps:

#### 1. Define defect modes and labels (keep it small)
Choose 2–3 defect types plus PASS (start with binary `PASS` vs `FAIL` if time is short).
- Store labels in a table loaded by `readtable(...)`.
- Manage images and labels with `imageDatastore(...)` and the `Labels` property (or use the example workflow for setting up labeled image datastores).  
  Helpful reference: [Create and Explore Datastore for Image Classification](https://www.mathworks.com/help/deeplearning/ug/create-and-explore-datastore-for-image-classification.html). :contentReference[oaicite:0]{index=0}

#### 2. Standardize images (fast, repeatable)
- Read images with `imread(...)` or through `imageDatastore(...)`.
- Standardize size with `imresize(...)` so metrics and model input are consistent.
- Convert to grayscale with `rgb2gray(...)` if your classical evidence uses intensity operations (the AI branch can still use RGB).

#### 3. Minimal classical preprocessing (for stability + evidence quality)
Apply only what you need to reduce sensitivity to normal station variation:
- Lighting correction: `imflatfield(...)` (or background estimate with `imgaussfilt(...)` and subtraction)
- Contrast normalization: `adapthisteq(...)`
- Denoising: `medfilt2(...)` or `imgaussfilt(...)`

Save intermediate results during development (e.g., `imshowpair(...)`) for quick debugging.

#### 4. ROI (often optional; keep it automatic)
If each image already contains a centered part with minimal clutter, skip ROI:
- `roi = I;`

If needed, keep ROI fully automatic (no per-image manual selection):
- Fixed crop defined once (camera is consistent): indexing or `imcrop(...)`.
- Auto-crop from the part mask: segment the part, compute `BoundingBox` using `regionprops(...)`, then `imcrop(...)`.

#### 5. Evidence segmentation (required, but intentionally minimal)
Goal: generate an evidence overlay and a few measurable numbers—not a perfect segmentation.

Use a defect-appropriate recipe and keep it short:
- Start with thresholding: `imbinarize(...)` or `adaptthresh(...)` + `imbinarize(...)`
- Clean small specks: `bwareaopen(...)`
- Bridge gaps (if appropriate): `imclose(...)`
- Fill holes (only when it matches your goal (e.g., for a clean outer part silhouette): `imfill(...,'holes')`

Deliverable: `maskEvidence = defectEvidence(roi)`.

#### 6. Evidence measurements (required, small set)
Extract a compact feature set for logging and interpretation:
- Connected components: `bwconncomp(...)`
- Region measurements: `regionprops(...,'Area','Eccentricity','Solidity','BoundingBox')`
- Simple intensity stats: `mean2(...)`, `std2(...)` on ROI or masked region

Return a struct/table such as:
- `numComponents`, `maxArea`, `areaRatio`, `edgeDensity` (if using `edge(...)`), etc.

Deliverable: `evidence = measureEvidence(roi, maskEvidence)`.


#### 6. Evidence measurements (required, but intentionally minimal)
After you generate an evidence mask, compute a small set of numbers that answer: “What did the algorithm see, and how strong was the evidence?”  
These measurements are mainly for traceability (inspection logs), debugging, and optional sanity checks, not for building a complex classical classifier.

Keep it to 3–4 metrics so it stays easy.

Recommended minimal metrics (works for many defect types):
- `numComponents`: how many separate suspicious regions were found  
  (use `bwconncomp(maskEvidence)` and read `NumObjects`)
- `maxArea`: size of the largest suspicious region  
  (use `regionprops(maskEvidence,'Area')`)
- `areaRatio`: fraction of the ROI flagged as suspicious  
  (`nnz(maskEvidence) / numel(maskEvidence)`)
- *(optional)* `edgeDensity`: if your evidence comes from edges (chips/scratches), measure how “edgy” the ROI is  
  (`nnz(edgeMask) / numel(edgeMask)`)


#### 7. Baseline rule-based gate (optional but recommended)
Implement 2–3 conservative rules so your system can always produce an explainable fallback:
- Example: fail if `maxArea > Amax` or `numComponents > Nmax`

Deliverable: `baselineDecision = decideRules(evidence)`.

#### 8. AI decision using a MathWorks pretrained network (required)
Use transfer learning with a pretrained network.

Recommended starter: **ResNet-18**
- Load the network: `net = resnet18;` (installs a support package if needed). :contentReference[oaicite:1]{index=1}
- Resize/augment input with `augmentedImageDatastore(...)` to match the network input size. :contentReference[oaicite:2]{index=2}
- Fine-tune the last layers for your classes (start with `PASS` vs `FAIL`), using `trainNetwork(...)` or a guided workflow such as “Get started with transfer learning” / pretrained network workflows. :contentReference[oaicite:3]{index=3}

Deliverable: `aiLabel = classify(net, roiForNet)` (and optionally scores).

#### 9. Combine outputs into a hybrid inspection result (required)
Create `inspectPart(I)` that returns:
- `finalLabel` (from AI)
- `confidenceScore` (from AI scores)
- `evidenceOverlay` (from Step 5)
- `evidenceMetrics` (from Step 6)
- (optional) `baselineDecision` and a “disagreement flag” if rules and AI disagree

Overlay results on the image using `insertShape(...)` / `insertText(...)`, and save rejects with `imwrite(...)`.

#### 10. Automated evaluation and reporting (required)
Write `runInspectionSuite.m` that:
- Splits data into train/test (e.g., `splitEachLabel(...)` or a fixed split)
- Evaluates the trained AI model and logs outcomes
- Produces a confusion matrix with `confusionmat(...)` / `confusionchart(...)`
- Summarizes yield and defect counts in tables and plots
- Creates a montage of common errors using `montage(...)`

#### 11. Robustness test (required, low difficulty)
Simulate station variation and re-run the evaluation:
- Brightness/contrast: `imadjust(...)`
- Blur: `imgaussfilt(...)`
- Noise: `imnoise(...)`

Report how accuracy and false-reject rate change under perturbations (AI vs baseline rules).

---

## Optional Extension: AI-Based Segmentation (advanced; only if data is provided)
AI segmentation is **not required** for the core project. It becomes reasonable only if you have:
- pixel-level ground truth masks, or
- time to label masks using an app.

If you do it, use the Image Labeler to create pixel labels and train a semantic segmentation network.
- Label pixels using the Image Labeler / pixel labeling workflows:  
  - [Get Started with the Image Labeler](https://www.mathworks.com/help/vision/ug/get-started-with-the-image-labeler.html) :contentReference[oaicite:4]{index=4}  
  - [Label Pixels for Semantic Segmentation](https://www.mathworks.com/help/vision/ug/label-pixels-for-semantic-segmentation.html) :contentReference[oaicite:5]{index=5}  
- Note: the Image Labeler supports pixel labeling tools and (in recent releases) options to assist labeling. :contentReference[oaicite:6]{index=6}

Deliverable (extension): `maskAI = segmentDefect(I)` and comparison vs classical evidence masks.

---

## Background Material
- [Pretrained Deep Neural Networks (classification, feature extraction, transfer learning)](https://www.mathworks.com/help/deeplearning/ug/pretrained-convolutional-neural-networks.html) :contentReference[oaicite:7]{index=7}  
- [`resnet18` documentation](https://www.mathworks.com/help/deeplearning/ref/resnet18.html) :contentReference[oaicite:8]{index=8}  
- [`augmentedImageDatastore` documentation](https://www.mathworks.com/help/deeplearning/ref/augmentedimagedatastore.html) :contentReference[oaicite:9]{index=9}  
- [Deep Learning Toolbox documentation](https://www.mathworks.com/help/deeplearning/index.html) :contentReference[oaicite:10]{index=10}  
- [Create and Explore Datastore for Image Classification (example)](https://www.mathworks.com/help/deeplearning/ug/create-and-explore-datastore-for-image-classification.html) :contentReference[oaicite:11]{index=11}  
- [Get Started with the Image Labeler (ROI + pixel labels)](https://www.mathworks.com/help/vision/ug/get-started-with-the-image-labeler.html) :contentReference[oaicite:12]{index=12}  
- [Label Pixels for Semantic Segmentation](https://www.mathworks.com/help/vision/ug/label-pixels-for-semantic-segmentation.html) :contentReference[oaicite:13]{index=13}  

## Suggested Papers (Optional)
- (Instructor/course-provided) readings on industrial inspection, segmentation/morphology fundamentals, and ML evaluation.

## Impact
Reduce defects and scrap by delivering a repeatable inspection workflow.

## Expertise Gained
Artificial Intelligence, Image preprocessing 

## Project Difficulty
Community College (1st–2nd year), intermediate (core is approachable; optional AI segmentation is a stretch).

