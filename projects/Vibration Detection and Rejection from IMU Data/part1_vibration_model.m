%% Part 1: Vibration Model Development for IMU Data
% This script demonstrates how to create a vibration model for IMU sensors
% and simulate IMU signals for both stationary and moving devices

clear all; close all; clc;

%% Prerequisites Check
try
    % Check if required toolboxes are available
    if ~license('test', 'Navigation_Toolbox')
        error('Navigation Toolbox is required but not available');
    end
    if ~license('test', 'Sensor_Fusion_and_Tracking_Toolbox')
        warning('Sensor Fusion and Tracking Toolbox recommended for waypointTrajectory');
    end
    fprintf('✓ Required toolboxes are available\n\n');
catch ME
    fprintf('⚠ Toolbox availability check failed: %s\n', ME.message);
    fprintf('Please ensure you have Navigation Toolbox installed.\n\n');
end

%% Step 1: Basic IMU Sensor Setup
fprintf('=== Step 1: Setting up IMU Sensor ===\n');

% Create IMU sensor object
imu = imuSensor('accel-gyro');

% Configure IMU sensor properties
imu.SampleRate = 100; % Hz
imu.Accelerometer.MeasurementRange = 19.6; % m/s^2
imu.Gyroscope.MeasurementRange = 4.36; % rad/s

% Add noise characteristics
imu.Accelerometer.Resolution = 0.0024; % m/s^2
imu.Gyroscope.Resolution = 8.7266e-4; % rad/s
imu.Accelerometer.ConstantBias = [0.1 -0.2 0.15]; % m/s^2
imu.Gyroscope.ConstantBias = [0.02 -0.03 0.01]; % rad/s

fprintf('✓ IMU sensor configured with realistic noise characteristics\n');

%% Step 2: Generate Reference Motion (Stationary and Moving)
fprintf('\n=== Step 2: Generating Reference Trajectories ===\n');

% Time parameters
dt = 1/imu.SampleRate;
duration = 10; % seconds
numSamples = duration * imu.SampleRate;
t = (0:numSamples-1) * dt;

% Case 1: Stationary IMU
fprintf('Generating stationary trajectory...\n');
position_stationary = zeros(numSamples, 3);
velocity_stationary = zeros(numSamples, 3);
acceleration_stationary = repmat([0 0 9.81], numSamples, 1); % Just gravity
orientation_stationary = repmat([1 0 0 0], numSamples, 1); % No rotation
angVel_stationary = zeros(numSamples, 3);
angAccel_stationary = zeros(numSamples, 3);

% Case 2: Moving IMU with simple trajectory
fprintf('Generating moving trajectory...\n');
% Simple sinusoidal motion
amplitude = 2; % meters
frequency = 0.5; % Hz

position_moving = zeros(numSamples, 3);
velocity_moving = zeros(numSamples, 3);
acceleration_moving = zeros(numSamples, 3);

for i = 1:numSamples
    % Sinusoidal position
    position_moving(i, 1) = amplitude * sin(2*pi*frequency*t(i));
    position_moving(i, 2) = amplitude/2 * cos(2*pi*frequency*t(i));
    position_moving(i, 3) = 0;
    
    % Velocity (derivative of position)
    velocity_moving(i, 1) = amplitude * 2*pi*frequency * cos(2*pi*frequency*t(i));
    velocity_moving(i, 2) = -amplitude/2 * 2*pi*frequency * sin(2*pi*frequency*t(i));
    velocity_moving(i, 3) = 0;
    
    % Acceleration (derivative of velocity) + gravity
    acceleration_moving(i, 1) = -amplitude * (2*pi*frequency)^2 * sin(2*pi*frequency*t(i));
    acceleration_moving(i, 2) = -amplitude/2 * (2*pi*frequency)^2 * cos(2*pi*frequency*t(i));
    acceleration_moving(i, 3) = 9.81; % gravity
end

% Simple orientation (no rotation for moving case)
orientation_moving = repmat([1 0 0 0], numSamples, 1);
angVel_moving = zeros(numSamples, 3);
angAccel_moving = zeros(numSamples, 3);

fprintf('✓ Reference trajectories generated\n');

%% Step 3: Create Vibration Model
fprintf('\n=== Step 3: Creating Vibration Model ===\n');

% Vibration parameters
vibration_freq1 = 25; % Hz - motor vibration
vibration_freq2 = 60; % Hz - electrical interference
vibration_freq3 = 120; % Hz - mechanical resonance

vibration_amplitude1 = 0.5; % m/s^2
vibration_amplitude2 = 0.3; % m/s^2
vibration_amplitude3 = 0.2; % m/s^2

% Generate vibration signals
vibration_signal = zeros(numSamples, 3);
for i = 1:numSamples
    % Multi-frequency vibration with phase variations
    vib1 = vibration_amplitude1 * sin(2*pi*vibration_freq1*t(i) + 0.1*randn(1));
    vib2 = vibration_amplitude2 * sin(2*pi*vibration_freq2*t(i) + 0.1*randn(1));
    vib3 = vibration_amplitude3 * sin(2*pi*vibration_freq3*t(i) + 0.1*randn(1));
    
    % Apply vibration differently to each axis
    vibration_signal(i, 1) = vib1 + 0.7*vib2; % X-axis
    vibration_signal(i, 2) = 0.8*vib1 + vib3; % Y-axis
    vibration_signal(i, 3) = 0.5*vib2 + 0.9*vib3; % Z-axis
end

% Add vibration to accelerations
acceleration_stationary_vibrating = acceleration_stationary + vibration_signal;
acceleration_moving_vibrating = acceleration_moving + vibration_signal;

fprintf('✓ Multi-frequency vibration model created\n');
fprintf('  - Primary vibration: %.1f Hz (%.2f m/s²)\n', vibration_freq1, vibration_amplitude1);
fprintf('  - Secondary vibration: %.1f Hz (%.2f m/s²)\n', vibration_freq2, vibration_amplitude2);
fprintf('  - Tertiary vibration: %.1f Hz (%.2f m/s²)\n', vibration_freq3, vibration_amplitude3);

%% Step 4: Simulate IMU Measurements
fprintf('\n=== Step 4: Simulating IMU Measurements ===\n');

% Simulate clean IMU data (stationary)
[accel_clean_stat, gyro_clean_stat] = imu(acceleration_stationary, angVel_stationary, orientation_stationary);

% Simulate vibrating IMU data (stationary)
[accel_vib_stat, gyro_vib_stat] = imu(acceleration_stationary_vibrating, angVel_stationary, orientation_stationary);

% Simulate clean IMU data (moving)
[accel_clean_mov, gyro_clean_mov] = imu(acceleration_moving, angVel_moving, orientation_moving);

% Simulate vibrating IMU data (moving)
[accel_vib_mov, gyro_vib_mov] = imu(acceleration_moving_vibrating, angVel_moving, orientation_moving);

fprintf('✓ IMU measurements simulated for all scenarios\n');

%% Step 5: Visualization and Analysis
fprintf('\n=== Step 5: Results Visualization ===\n');

% Create comprehensive plots
figure('Position', [100, 100, 1200, 800]);

% Plot 1: Stationary IMU comparison
subplot(2,3,1);
plot(t, accel_clean_stat(:,3), 'b-', 'LineWidth', 1.5); hold on;
plot(t, accel_vib_stat(:,3), 'r--', 'LineWidth', 1);
title('Stationary IMU - Z-axis Acceleration');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'With Vibration', 'Location', 'best');
grid on;

% Plot 2: Moving IMU comparison
subplot(2,3,2);
plot(t, accel_clean_mov(:,1), 'b-', 'LineWidth', 1.5); hold on;
plot(t, accel_vib_mov(:,1), 'r--', 'LineWidth', 1);
title('Moving IMU - X-axis Acceleration');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'With Vibration', 'Location', 'best');
grid on;

% Plot 3: Vibration signal spectrum
subplot(2,3,3);
[P, f] = periodogram(vibration_signal(:,1), [], [], imu.SampleRate);
semilogx(f, 10*log10(P));
title('Vibration Signal Spectrum');
xlabel('Frequency (Hz)'); ylabel('Power Spectral Density (dB/Hz)');
grid on;

% Plot 4: 3D trajectory
subplot(2,3,4);
plot3(position_moving(:,1), position_moving(:,2), position_moving(:,3), 'b-', 'LineWidth', 2);
title('3D Trajectory');
xlabel('X (m)'); ylabel('Y (m)'); zlabel('Z (m)');
grid on; axis equal;

% Plot 5: Accelerometer comparison (all axes)
subplot(2,3,5);
plot(t, accel_clean_mov, 'LineWidth', 1.5); hold on;
plot(t, accel_vib_mov, '--', 'LineWidth', 1);
title('All Axes - Moving IMU');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend({'X_{clean}', 'Y_{clean}', 'Z_{clean}', 'X_{vib}', 'Y_{vib}', 'Z_{vib}'}, 'Location', 'best');
grid on;

% Plot 6: Gyroscope data
subplot(2,3,6);
plot(t, gyro_vib_mov, 'LineWidth', 1.5);
title('Gyroscope Data (Moving with Vibration)');
xlabel('Time (s)'); ylabel('Angular Velocity (rad/s)');
legend('X', 'Y', 'Z', 'Location', 'best');
grid on;

sgtitle('IMU Vibration Model Analysis Results');

%% Step 6: Performance Metrics
fprintf('\n=== Step 6: Performance Analysis ===\n');

% Calculate RMS values for vibration assessment
rms_vibration = sqrt(mean(vibration_signal.^2));
snr_stationary = 20*log10(9.81 / rms_vibration(3)); % Signal-to-noise ratio for Z-axis

fprintf('Vibration Analysis Results:\n');
fprintf('  RMS Vibration [X Y Z]: [%.3f %.3f %.3f] m/s²\n', rms_vibration);
fprintf('  SNR (Z-axis, stationary): %.2f dB\n', snr_stationary);

% Frequency domain analysis
[P_clean, f] = periodogram(accel_clean_mov(:,1), [], [], imu.SampleRate);
[P_vib, ~] = periodogram(accel_vib_mov(:,1), [], [], imu.SampleRate);

% Find peak frequencies in vibration
[peaks, peak_locs] = findpeaks(P_vib, f, 'MinPeakHeight', max(P_vib)*0.1);
fprintf('  Detected vibration frequencies: ');
for i = 1:min(3, length(peak_locs))
    fprintf('%.1f Hz ', peak_locs(i));
end
fprintf('\n');

%% Save Results
fprintf('\n=== Step 7: Saving Results ===\n');

% Save simulation data
save('imu_vibration_simulation_data.mat', ...
     'accel_clean_stat', 'accel_vib_stat', 'gyro_clean_stat', 'gyro_vib_stat', ...
     'accel_clean_mov', 'accel_vib_mov', 'gyro_clean_mov', 'gyro_vib_mov', ...
     'vibration_signal', 't', 'imu');

fprintf('✓ Simulation data saved to: imu_vibration_simulation_data.mat\n');
fprintf('✓ Part 1 (Vibration Model) completed successfully!\n\n');

% Display summary
fprintf('SUMMARY - Part 1: Vibration Model Development\n');
fprintf('=============================================\n');
fprintf('• Successfully created IMU sensor model with realistic noise characteristics\n');
fprintf('• Generated reference trajectories for stationary and moving scenarios\n');
fprintf('• Developed multi-frequency vibration model (25, 60, 120 Hz)\n');
fprintf('• Simulated clean and vibrating IMU measurements\n');
fprintf('• Analyzed frequency content and performance metrics\n');
fprintf('• Data saved for use in Part 2 (Vibration Compensation)\n\n');

fprintf('Next Steps:\n');
fprintf('1. Run part2_vibration_compensation.m to develop detection/filtering algorithms\n');
fprintf('2. Experiment with different vibration frequencies and amplitudes\n');
fprintf('3. Try advanced vibration models using machine learning approaches\n\n');