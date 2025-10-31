# MATLAB Setup and Installation Guide
## Vibration Detection and Rejection from IMU Data Project

This guide provides step-by-step instructions for setting up your MATLAB environment to run the Vibration Detection and Rejection from IMU Data project.

## Prerequisites

### MATLAB Version Requirements
- **MATLAB R2020b or later** (recommended: R2023a or newer)
- **Operating System**: Windows 10/11, macOS 10.15+, or Linux Ubuntu 18.04+

### Required MATLAB Toolboxes
The following toolboxes are **required** to run this project:

1. **Navigation Toolbox** ✅ *Essential*
   - Provides `imuSensor` system object
   - Used for IMU simulation and modeling

2. **Signal Processing Toolbox** ✅ *Essential*
   - Required for filtering and frequency analysis
   - Used in vibration compensation algorithms

### Recommended MATLAB Toolboxes
These toolboxes enhance the project experience but are not strictly required:

3. **Sensor Fusion and Tracking Toolbox** ⭐ *Recommended*
   - Provides `waypointTrajectory` for advanced motion simulation
   - Enables more realistic trajectory generation

4. **Statistics and Machine Learning Toolbox** ⭐ *Recommended*
   - Useful for advanced vibration analysis
   - Enables machine learning approaches (future extensions)

## Installation Steps

### Step 1: Check Your MATLAB Installation

1. **Open MATLAB**
2. **Check MATLAB version:**
   ```matlab
   version
   ```
   Ensure you have R2020b (9.9) or later.

3. **Check installed toolboxes:**
   ```matlab
   ver
   ```
   Look for the required toolboxes in the output.

### Step 2: Install Required Toolboxes (if missing)

If you don't have the required toolboxes:

#### Option A: MATLAB Add-On Explorer (Easiest)
1. In MATLAB, go to **Home** tab → **Add-Ons** → **Get Add-Ons**
2. Search for and install:
   - "Navigation Toolbox"
   - "Signal Processing Toolbox"
   - "Sensor Fusion and Tracking Toolbox" (recommended)

#### Option B: MathWorks Website
1. Visit [MathWorks Products](https://www.mathworks.com/products.html)
2. Purchase or request trial licenses for required toolboxes
3. Download and install through MATLAB

#### Option C: University License (Students)
1. Check if your university provides MATLAB campus license
2. Contact your IT department or visit the university MATLAB portal
3. Install toolboxes through the campus license

### Step 3: Verify Toolbox Installation

Run this verification script in MATLAB:

```matlab
%% Toolbox Verification Script
fprintf('=== MATLAB Toolbox Verification ===\n');

% Check MATLAB version
matlab_version = version('-release');
fprintf('MATLAB Version: %s\n', matlab_version);

% Required toolboxes
required_toolboxes = {
    'Navigation_Toolbox', 'Navigation Toolbox';
    'Signal_Toolbox', 'Signal Processing Toolbox'
};

% Check required toolboxes
fprintf('\nRequired Toolboxes:\n');
all_required_available = true;
for i = 1:size(required_toolboxes, 1)
    if license('test', required_toolboxes{i,1})
        fprintf('✅ %s: AVAILABLE\n', required_toolboxes{i,2});
    else
        fprintf('❌ %s: NOT AVAILABLE\n', required_toolboxes{i,2});
        all_required_available = false;
    end
end

% Check recommended toolboxes
recommended_toolboxes = {
    'Sensor_Fusion_and_Tracking_Toolbox', 'Sensor Fusion and Tracking Toolbox';
    'Statistics_Toolbox', 'Statistics and Machine Learning Toolbox'
};

fprintf('\nRecommended Toolboxes:\n');
for i = 1:size(recommended_toolboxes, 1)
    if license('test', recommended_toolboxes{i,1})
        fprintf('⭐ %s: AVAILABLE\n', recommended_toolboxes{i,2});
    else
        fprintf('⚪ %s: Not available (optional)\n', recommended_toolboxes{i,2});
    end
end

% Overall status
if all_required_available
    fprintf('\n✅ Your MATLAB installation is ready for the project!\n');
else
    fprintf('\n❌ Please install missing required toolboxes before proceeding.\n');
end
```

### Step 4: Test IMU Sensor Object

Before running the main project, test the core functionality:

```matlab
%% Test IMU Sensor Creation
try
    % Create IMU sensor object
    imu = imuSensor('accel-gyro');
    imu.SampleRate = 100;
    
    % Test basic functionality
    accel_data = [0 0 9.81]; % Gravity vector
    gyro_data = [0 0 0];     % No rotation
    orientation = [1 0 0 0]; % No rotation quaternion
    
    [accel_out, gyro_out] = imu(accel_data, gyro_data, orientation);
    
    fprintf('✅ IMU sensor object test successful!\n');
    fprintf('   Sample accelerometer output: [%.2f %.2f %.2f] m/s²\n', accel_out);
    fprintf('   Sample gyroscope output: [%.4f %.4f %.4f] rad/s\n', gyro_out);
    
catch ME
    fprintf('❌ IMU sensor test failed: %s\n', ME.message);
    fprintf('   Please check Navigation Toolbox installation.\n');
end
```

## Troubleshooting

### Common Issues and Solutions

#### Issue 1: "imuSensor not found"
**Solution:**
- Install Navigation Toolbox
- Restart MATLAB after installation
- Check toolbox license: `license('test', 'Navigation_Toolbox')`

#### Issue 2: "waypointTrajectory not found"
**Solution:**
- This is from Sensor Fusion and Tracking Toolbox (optional)
- Install the toolbox or run without advanced trajectory features
- The main project will work without this function

#### Issue 3: MATLAB version too old
**Solution:**
- Update to MATLAB R2020b or later
- Some features may work on older versions but are not guaranteed

#### Issue 4: University/Corporate Network Issues
**Solution:**
- Contact your IT administrator for MATLAB licensing
- Use MathWorks Installation Support: [mathworks.com/support/install](https://www.mathworks.com/support/install/)

#### Issue 5: Memory Issues
**Minimum Requirements:**
- RAM: 4 GB (8 GB recommended)
- Disk Space: 3-4 GB for MATLAB + toolboxes
- Close other applications if MATLAB runs slowly

### Getting Help

1. **MathWorks Documentation:**
   - [Navigation Toolbox Documentation](https://www.mathworks.com/help/nav/)
   - [Signal Processing Toolbox Documentation](https://www.mathworks.com/help/signal/)

2. **MathWorks Support:**
   - [Technical Support](https://www.mathworks.com/support/contact_us/)
   - [Community Forums](https://www.mathworks.com/matlabcentral/)

3. **University Resources:**
   - Campus MATLAB support
   - Engineering department MATLAB licenses

## Alternative Options

### If You Cannot Install MATLAB:

1. **MATLAB Online** (Browser-based)
   - Visit [matlab.mathworks.com](https://matlab.mathworks.com)
   - Limited storage but includes most toolboxes
   - Requires internet connection

2. **University Computer Labs**
   - Most engineering schools have MATLAB installed
   - Full toolbox access typically available

3. **Trial Version**
   - 30-day free trial available from MathWorks
   - Includes all toolboxes

## Next Steps

Once your MATLAB environment is ready:

1. ✅ Run the verification script above
2. ✅ Download the project files
3. ✅ Follow the [Project Execution Guide](README.md)
4. 🚀 Start with `part1_vibration_model.m`

---

**Questions?** 
- Check the [main project README](README.md) for detailed project instructions
- Review the troubleshooting section above
- Contact MathWorks support for licensing issues