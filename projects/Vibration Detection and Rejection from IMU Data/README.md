# Vibration Detection and Rejection from IMU Data

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/vibration.png"  width=500 /></td>
<td><p><h1>Complete MATLAB Implementation Guide</h1></p>
<p>Step-by-step guide to develop vibration models and compensation algorithms for IMU data using MATLAB.</p>
</table>

## 🚀 Quick Start Guide

**Ready to run the project?** Follow these steps:

1. **[Setup MATLAB Environment](#-matlab-environment-setup)** ⚙️
2. **[Run Part 1: Vibration Model](#-part-1-vibration-model-development)** 📊
3. **[Run Part 2: Vibration Compensation](#-part-2-vibration-compensation-algorithms)** 🔧
4. **[View Results](#-expected-outputs-and-results)** 📈

---

## 🎯 Project Overview

Inertial measurement units (IMUs) are critical sensors for navigation in UAVs, ground robots, and underwater vehicles. However, IMU data can be significantly degraded by vibrations from motors, rotors, and environmental factors. This project provides a complete MATLAB implementation to:

1. **Simulate realistic vibration effects** on IMU sensors
2. **Develop compensation algorithms** to remove vibration artifacts  
3. **Compare different filtering techniques** for optimal performance

**What You'll Build:**
- Multi-frequency vibration model for IMU simulation
- Four different compensation algorithms (Low-pass, Notch, Adaptive, Kalman filtering)
- Performance analysis and comparison framework
- Real-time vibration detection system

## 🛠 MATLAB Environment Setup

### System Requirements

**MATLAB Version:** R2020b or later (recommended: R2023a+)

**Required Toolboxes:**
- ✅ **Navigation Toolbox** - Provides `imuSensor` system object
- ✅ **Signal Processing Toolbox** - Required for filtering and analysis

**Optional Toolboxes (Enhance Experience):**
- ⭐ **Sensor Fusion and Tracking Toolbox** - For `waypointTrajectory`
- ⭐ **Statistics and Machine Learning Toolbox** - For advanced analysis

### Quick Setup Check

Run this in MATLAB to verify your setup:

```matlab
%% Quick Setup Verification
fprintf('=== MATLAB Setup Check ===\n');

% Check MATLAB version
fprintf('MATLAB Version: %s\n', version('-release'));

% Check required toolboxes
if license('test', 'Navigation_Toolbox')
    fprintf('✅ Navigation Toolbox: Available\n');
else
    fprintf('❌ Navigation Toolbox: Missing (Required)\n');
end

if license('test', 'Signal_Toolbox')
    fprintf('✅ Signal Processing Toolbox: Available\n');
else
    fprintf('❌ Signal Processing Toolbox: Missing (Required)\n');
end

% Test IMU sensor creation
try
    imu_test = imuSensor('accel-gyro');
    fprintf('✅ IMU Sensor Test: Passed\n');
catch
    fprintf('❌ IMU Sensor Test: Failed\n');
end

fprintf('\nIf all items show ✅, you''re ready to proceed!\n');
```

**Need help with setup?** See our detailed [MATLAB Setup Guide](MATLAB_SETUP_GUIDE.md).

## 📊 Part 1: Vibration Model Development

### What This Does
- Creates realistic IMU sensor model with noise characteristics
- Generates reference trajectories (stationary and moving)
- Develops multi-frequency vibration model (25Hz, 60Hz, 120Hz)
- Simulates clean vs. vibrating IMU measurements

### How to Run

1. **Navigate to the project folder** in MATLAB
2. **Run the vibration model script:**
   ```matlab
   part1_vibration_model
   ```

### Expected Runtime
⏱️ **~30 seconds** on modern hardware

### What You'll See

The script will display:
```
=== Step 1: Setting up IMU Sensor ===
✓ IMU sensor configured with realistic noise characteristics

=== Step 2: Generating Reference Trajectories ===
Generating stationary trajectory...
Generating moving trajectory...
✓ Reference trajectories generated

=== Step 3: Creating Vibration Model ===
✓ Multi-frequency vibration model created
  - Primary vibration: 25.0 Hz (0.50 m/s²)
  - Secondary vibration: 60.0 Hz (0.30 m/s²)  
  - Tertiary vibration: 120.0 Hz (0.20 m/s²)

=== Step 4: Simulating IMU Measurements ===
✓ IMU measurements simulated for all scenarios

=== Step 5: Results Visualization ===
[Displays comprehensive analysis plots]

=== Step 6: Performance Analysis ===
Vibration Analysis Results:
  RMS Vibration [X Y Z]: [0.405 0.446 0.371] m/s²
  SNR (Z-axis, stationary): 18.45 dB
  Detected vibration frequencies: 25.0 Hz 60.0 Hz 120.0 Hz 

=== Step 7: Saving Results ===
✓ Simulation data saved to: imu_vibration_simulation_data.mat
✓ Part 1 (Vibration Model) completed successfully!
```

### Generated Files
- `imu_vibration_simulation_data.mat` - Contains all simulation data for Part 2

## 🔧 Part 2: Vibration Compensation Algorithms  

### What This Does
- Implements vibration detection using frequency domain analysis
- Develops 4 different compensation methods:
  1. **Low-Pass Filtering** - Removes high-frequency vibration
  2. **Notch Filtering** - Targets specific vibration frequencies
  3. **Adaptive Filtering** - Adjusts to local signal conditions
  4. **Kalman Filtering** - Optimal estimation approach
- Compares performance and recommends best method

### How to Run

1. **Ensure Part 1 completed successfully** (creates required data file)
2. **Run the compensation script:**
   ```matlab
   part2_vibration_compensation
   ```

### Expected Runtime
⏱️ **~45 seconds** on modern hardware

### What You'll See

```
=== Loading Vibration Model Data ===
✓ Successfully loaded simulation data from Part 1

=== Step 1: Vibration Detection ===
Vibration Detection Results:
  Baseline power level: 2.15e-06
  Detection threshold: 6.44e-06
  Vibration detected at frequencies: 25.0 Hz 59.9 Hz 119.8 Hz

=== Step 2: Low-Pass Filter Compensation ===
Low-Pass Filter Results:
  Filter: 6th order Butterworth, 15.0 Hz cutoff
  RMSE [X Y Z]: [0.1247 0.1156 0.0892] m/s²

=== Step 3: Notch Filter Compensation ===
  Applied notch filter at 25.0 Hz
  Applied notch filter at 60.0 Hz
  Applied notch filter at 120.0 Hz
Notch Filter Results:
  RMSE [X Y Z]: [0.0823 0.0756 0.0634] m/s²

=== Step 4: Adaptive Filter Compensation ===
Adaptive Filter Results:
  Base window: 10.0 ms, adaptation factor: 0.1
  RMSE [X Y Z]: [0.1534 0.1423 0.1198] m/s²

=== Step 5: Kalman Filter Compensation ===
Kalman Filter Results:
  Process noise variance Q: 0.010
  Measurement noise variance R: 0.100
  RMSE [X Y Z]: [0.1892 0.1734 0.1456] m/s²

=== Step 7: Performance Summary ===
Method Performance Comparison (RMSE):
                X-axis   Y-axis   Z-axis   Average
Low-Pass:      0.1247   0.1156   0.0892   0.1098
Notch:         0.0823   0.0756   0.0634   0.0738
Adaptive:      0.1534   0.1423   0.1198   0.1385
Kalman:        0.1892   0.1734   0.1456   0.1694

Best performing method: Notch (RMSE: 0.0738 m/s²)
```

### Generated Files
- `imu_vibration_compensation_results.mat` - Contains all filtering results

## 📈 Expected Outputs and Results

### Visual Results

Both scripts generate comprehensive visualization plots:

#### Part 1 Visualizations:
1. **Stationary vs. Moving IMU Comparison** - Shows effect of vibration on different motion states
2. **3D Trajectory Plot** - Visualizes the reference motion path
3. **Frequency Spectrum Analysis** - Identifies vibration frequencies
4. **Multi-axis Accelerometer Data** - Compares clean vs. vibrating signals
5. **Performance Metrics** - SNR and RMS analysis

#### Part 2 Visualizations:
1. **Filter Comparison Plots** - Shows before/after filtering for each method
2. **Frequency Domain Analysis** - Demonstrates vibration removal effectiveness
3. **Error Analysis** - Quantifies filtering performance
4. **Performance Matrix** - Heat map of RMSE across methods and axes
5. **Method Comparison Bar Chart** - Easy visual comparison of techniques

### Key Performance Metrics

**Typical Results:**
- **Vibration Detection Accuracy:** >95% for frequencies above 20Hz
- **Best Filter Performance:** Notch filtering (RMSE ~0.07 m/s²)
- **Processing Speed:** Real-time capable (>100Hz sample rates)
- **Frequency Range:** Effective for vibrations 10-200Hz

### Expected File Outputs

After running both parts:
```
📁 Project Folder/
├── 📄 part1_vibration_model.m
├── 📄 part2_vibration_compensation.m
├── 📄 MATLAB_SETUP_GUIDE.md
├── 📄 README.md
├── 📊 imu_vibration_simulation_data.mat (generated)
├── 📊 imu_vibration_compensation_results.mat (generated)
├── 🖼️ vibrationModel.png
└── 🖼️ VibrationCompensation.png
```

## 🔬 Understanding the Results

### Vibration Model Analysis
- **Multi-frequency approach** simulates realistic mechanical vibrations
- **SNR analysis** quantifies vibration impact (typical: 15-25 dB)
- **Spectral content** reveals dominant vibration modes

### Compensation Performance
- **Notch filters** work best when vibration frequencies are known and stable
- **Low-pass filters** provide general high-frequency suppression
- **Adaptive methods** handle time-varying vibration characteristics
- **Kalman filters** excel when system dynamics are well understood

## 🚀 Advanced Extensions

### Next Steps to Enhance the Project:

1. **Machine Learning Approaches:**
   ```matlab
   % Add neural network-based vibration detection
   % Implement deep learning for adaptive filtering
   ```

2. **Real-time Implementation:**
   ```matlab
   % Stream data from MATLAB Mobile or Arduino
   % Implement online filtering algorithms
   ```

3. **Multiple IMU Fusion:**
   ```matlab
   % Combine multiple IMU sensors
   % Implement sensor fusion techniques
   ```

4. **Hardware Testing:**
   - Use Arduino with IMU sensors
   - Validate with real vibration data
   - Test on actual drone/vehicle platforms

## 📚 Learning Outcomes

After completing this project, you will understand:

✅ **IMU Sensor Modeling** - How to simulate realistic IMU behavior  
✅ **Vibration Characterization** - Methods to analyze and model vibrations  
✅ **Digital Signal Processing** - Filtering techniques for noise removal  
✅ **Performance Analysis** - Quantitative evaluation of algorithm effectiveness  
✅ **MATLAB Programming** - Advanced signal processing and visualization  

## ❓ Troubleshooting

### Common Issues:

**❌ "imuSensor not found"**
- Install Navigation Toolbox
- Restart MATLAB after installation

**❌ Scripts run slowly**  
- Close other applications
- Reduce simulation duration in scripts

**❌ Plots don't appear**
- Check MATLAB graphics settings
- Try: `set(0,'DefaultFigureWindowStyle','docked')`

**❌ Out of memory errors**
- Reduce `numSamples` in Part 1
- Clear workspace: `clear all; close all; clc`

### Getting Help:

1. **Check the [Setup Guide](MATLAB_SETUP_GUIDE.md)** for installation issues
2. **Review MATLAB documentation** for specific functions
3. **Contact MathWorks support** for licensing problems

## 📄 Project Information

**Difficulty Level:** Bachelor's to Doctoral  
**Estimated Time:** 4-8 hours total  
**Skills Gained:** Signal Processing, IMU Systems, Filter Design, MATLAB Programming

**Industry Applications:**
- Drone navigation systems
- Autonomous vehicle localization  
- Robotics sensor fusion
- Aerospace guidance systems

---

## 📋 Project Checklist

Use this checklist to track your progress:

### Setup Phase:
- [ ] MATLAB R2020b+ installed
- [ ] Navigation Toolbox available
- [ ] Signal Processing Toolbox available  
- [ ] Setup verification script passed

### Part 1 - Vibration Model:
- [ ] IMU sensor configured successfully
- [ ] Reference trajectories generated
- [ ] Multi-frequency vibration model created
- [ ] Clean vs. vibrating data simulated
- [ ] Visualization plots generated
- [ ] Data file saved (`imu_vibration_simulation_data.mat`)

### Part 2 - Vibration Compensation:
- [ ] Vibration detection algorithm implemented
- [ ] Low-pass filter compensation tested
- [ ] Notch filter compensation tested
- [ ] Adaptive filter compensation tested
- [ ] Kalman filter compensation tested
- [ ] Performance comparison completed
- [ ] Results file saved (`imu_vibration_compensation_results.mat`)

### Analysis Complete:
- [ ] Best performing method identified
- [ ] Results interpreted and understood
- [ ] Practical recommendations noted

**🎉 Congratulations!** You've successfully implemented a complete vibration detection and compensation system for IMU data using MATLAB!

---

*For questions about this implementation or to report issues, please refer to the troubleshooting section or consult the MATLAB documentation.*