%% Part 2: Vibration Compensation Algorithm for IMU Data
% This script demonstrates various techniques to detect and compensate
% for vibration in IMU data using classical signal processing methods

clear all; close all; clc;

%% Load Data from Part 1
fprintf('=== Loading Vibration Model Data ===\n');

try
    load('imu_vibration_simulation_data.mat');
    fprintf('✓ Successfully loaded simulation data from Part 1\n');
catch
    fprintf('⚠ Could not find simulation data. Running Part 1 first...\n');
    run('part1_vibration_model.m');
    load('imu_vibration_simulation_data.mat');
end

%% Step 1: Vibration Detection Algorithm
fprintf('\n=== Step 1: Vibration Detection ===\n');

% Method 1: Frequency Domain Analysis
Fs = imu.SampleRate; % Sampling frequency
N = length(t); % Number of samples

% Compute power spectral density for clean and vibrating signals
[Pxx_clean, f] = periodogram(accel_clean_mov(:,1), [], [], Fs);
[Pxx_vib, ~] = periodogram(accel_vib_mov(:,1), [], [], Fs);

% Define vibration detection criteria
vibration_threshold_factor = 3; % Factor above baseline noise
baseline_power = mean(Pxx_clean(f > 80 & f < 90)); % Baseline in quiet frequency band
vibration_threshold = baseline_power * vibration_threshold_factor;

% Detect vibration frequencies
vibration_detected = Pxx_vib > vibration_threshold;
vibration_frequencies = f(vibration_detected);

fprintf('Vibration Detection Results:\n');
fprintf('  Baseline power level: %.2e\n', baseline_power);
fprintf('  Detection threshold: %.2e\n', vibration_threshold);
fprintf('  Vibration detected at frequencies: ');
sig_freqs = vibration_frequencies(vibration_frequencies > 10 & vibration_frequencies < 150);
fprintf('%.1f Hz ', sig_freqs(1:min(5, length(sig_freqs))));
fprintf('\n');

% Method 2: Statistical Vibration Detection
% Compare RMS levels in different frequency bands
freq_bands = [0 10; 10 30; 30 80; 80 150]; % Different frequency bands
rms_levels = zeros(size(freq_bands, 1), 3); % For X, Y, Z axes

for axis = 1:3
    for band = 1:size(freq_bands, 1)
        % Filter signal in frequency band
        [b, a] = butter(4, freq_bands(band,:)/(Fs/2), 'bandpass');
        filtered_signal = filtfilt(b, a, accel_vib_mov(:, axis));
        rms_levels(band, axis) = sqrt(mean(filtered_signal.^2));
    end
end

fprintf('\nRMS Analysis by Frequency Bands:\n');
band_names = {'DC-10Hz', '10-30Hz', '30-80Hz', '80-150Hz'};
for band = 1:size(freq_bands, 1)
    fprintf('  %s: [%.3f %.3f %.3f] m/s²\n', band_names{band}, rms_levels(band,:));
end

% Vibration flag (simple binary detection)
vibration_present = any(rms_levels(2:3, :) > 0.1, 'all'); % Vibration above 0.1 m/s² RMS
fprintf('  Vibration Status: %s\n', bool2str(vibration_present));

%% Step 2: Low-Pass Filtering Compensation
fprintf('\n=== Step 2: Low-Pass Filter Compensation ===\n');

% Design low-pass filter to remove high-frequency vibration
cutoff_freq = 15; % Hz - preserve motion dynamics, remove vibration
filter_order = 6;

% Butterworth low-pass filter
[b_lp, a_lp] = butter(filter_order, cutoff_freq/(Fs/2), 'low');

% Apply filter to all axes
accel_filtered_lp = zeros(size(accel_vib_mov));
gyro_filtered_lp = zeros(size(gyro_vib_mov));

for axis = 1:3
    accel_filtered_lp(:, axis) = filtfilt(b_lp, a_lp, accel_vib_mov(:, axis));
    gyro_filtered_lp(:, axis) = filtfilt(b_lp, a_lp, gyro_vib_mov(:, axis));
end

% Calculate filtering performance
error_lp = accel_filtered_lp - accel_clean_mov;
rmse_lp = sqrt(mean(error_lp.^2));

fprintf('Low-Pass Filter Results:\n');
fprintf('  Filter: %dth order Butterworth, %.1f Hz cutoff\n', filter_order, cutoff_freq);
fprintf('  RMSE [X Y Z]: [%.4f %.4f %.4f] m/s²\n', rmse_lp);

%% Step 3: Notch Filtering Compensation
fprintf('\n=== Step 3: Notch Filter Compensation ===\n');

% Design notch filters for specific vibration frequencies
vibration_freqs_target = [25, 60, 120]; % Known vibration frequencies
Q_factor = 10; % Quality factor for notch filters

accel_filtered_notch = accel_vib_mov; % Start with original signal
gyro_filtered_notch = gyro_vib_mov;

% Apply cascaded notch filters
for freq = vibration_freqs_target
    if freq < Fs/2 % Ensure frequency is below Nyquist
        % Design notch filter
        w0 = freq / (Fs/2); % Normalized frequency
        bw = w0 / Q_factor; % Bandwidth
        [b_notch, a_notch] = iirnotch(w0, bw);
        
        % Apply to all axes
        for axis = 1:3
            accel_filtered_notch(:, axis) = filtfilt(b_notch, a_notch, accel_filtered_notch(:, axis));
            gyro_filtered_notch(:, axis) = filtfilt(b_notch, a_notch, gyro_filtered_notch(:, axis));
        end
        
        fprintf('  Applied notch filter at %.1f Hz\n', freq);
    end
end

% Calculate notch filtering performance
error_notch = accel_filtered_notch - accel_clean_mov;
rmse_notch = sqrt(mean(error_notch.^2));

fprintf('Notch Filter Results:\n');
fprintf('  RMSE [X Y Z]: [%.4f %.4f %.4f] m/s²\n', rmse_notch);

%% Step 4: Adaptive Filtering Compensation
fprintf('\n=== Step 4: Adaptive Filter Compensation ===\n');

% Simple adaptive filter using moving average with dynamic window
window_base = round(Fs * 0.1); % Base window: 0.1 seconds
adaptation_factor = 0.1;

accel_filtered_adaptive = zeros(size(accel_vib_mov));

for axis = 1:3
    signal = accel_vib_mov(:, axis);
    filtered_signal = zeros(size(signal));
    
    for i = 1:length(signal)
        % Adapt window size based on local signal variance
        start_idx = max(1, i - window_base);
        end_idx = min(length(signal), i + window_base);
        local_variance = var(signal(start_idx:end_idx));
        
        % Dynamic window size (larger window for higher variance/vibration)
        adaptive_window = round(window_base * (1 + adaptation_factor * log(1 + local_variance)));
        
        % Apply moving average
        start_window = max(1, i - adaptive_window);
        end_window = min(length(signal), i + adaptive_window);
        filtered_signal(i) = mean(signal(start_window:end_window));
    end
    
    accel_filtered_adaptive(:, axis) = filtered_signal;
end

% Calculate adaptive filtering performance
error_adaptive = accel_filtered_adaptive - accel_clean_mov;
rmse_adaptive = sqrt(mean(error_adaptive.^2));

fprintf('Adaptive Filter Results:\n');
fprintf('  Base window: %.1f ms, adaptation factor: %.1f\n', window_base*1000/Fs, adaptation_factor);
fprintf('  RMSE [X Y Z]: [%.4f %.4f %.4f] m/s²\n', rmse_adaptive);

%% Step 5: Kalman Filter-based Compensation
fprintf('\n=== Step 5: Kalman Filter Compensation ===\n');

% Simple Kalman filter for each axis
accel_filtered_kalman = zeros(size(accel_vib_mov));

for axis = 1:3
    % Kalman filter parameters
    Q = 0.01; % Process noise variance
    R = 0.1;  % Measurement noise variance
    
    % Initialize Kalman filter
    x_hat = accel_vib_mov(1, axis); % Initial state estimate
    P = 1; % Initial error covariance
    
    filtered_signal = zeros(length(t), 1);
    
    for k = 1:length(t)
        % Prediction step (assume constant acceleration)
        x_hat_minus = x_hat; % State prediction
        P_minus = P + Q; % Error covariance prediction
        
        % Update step
        K = P_minus / (P_minus + R); % Kalman gain
        x_hat = x_hat_minus + K * (accel_vib_mov(k, axis) - x_hat_minus);
        P = (1 - K) * P_minus;
        
        filtered_signal(k) = x_hat;
    end
    
    accel_filtered_kalman(:, axis) = filtered_signal;
end

% Calculate Kalman filtering performance
error_kalman = accel_filtered_kalman - accel_clean_mov;
rmse_kalman = sqrt(mean(error_kalman.^2));

fprintf('Kalman Filter Results:\n');
fprintf('  Process noise variance Q: %.3f\n', Q);
fprintf('  Measurement noise variance R: %.3f\n', R);
fprintf('  RMSE [X Y Z]: [%.4f %.4f %.4f] m/s²\n', rmse_kalman);

%% Step 6: Comprehensive Visualization
fprintf('\n=== Step 6: Results Visualization ===\n');

% Create comprehensive comparison plots
figure('Position', [50, 50, 1400, 900]);

% Plot 1: Original vs filtered signals (X-axis)
subplot(3,3,1);
plot(t, accel_clean_mov(:,1), 'g-', 'LineWidth', 2); hold on;
plot(t, accel_vib_mov(:,1), 'r--', 'LineWidth', 1);
plot(t, accel_filtered_lp(:,1), 'b-', 'LineWidth', 1.5);
title('Low-Pass Filter Compensation (X-axis)');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'Vibrating', 'Filtered', 'Location', 'best');
grid on;

% Plot 2: Notch filter results
subplot(3,3,2);
plot(t, accel_clean_mov(:,1), 'g-', 'LineWidth', 2); hold on;
plot(t, accel_vib_mov(:,1), 'r--', 'LineWidth', 1);
plot(t, accel_filtered_notch(:,1), 'c-', 'LineWidth', 1.5);
title('Notch Filter Compensation (X-axis)');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'Vibrating', 'Notch Filtered', 'Location', 'best');
grid on;

% Plot 3: Adaptive filter results
subplot(3,3,3);
plot(t, accel_clean_mov(:,1), 'g-', 'LineWidth', 2); hold on;
plot(t, accel_vib_mov(:,1), 'r--', 'LineWidth', 1);
plot(t, accel_filtered_adaptive(:,1), 'm-', 'LineWidth', 1.5);
title('Adaptive Filter Compensation (X-axis)');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'Vibrating', 'Adaptive Filtered', 'Location', 'best');
grid on;

% Plot 4: Kalman filter results
subplot(3,3,4);
plot(t, accel_clean_mov(:,1), 'g-', 'LineWidth', 2); hold on;
plot(t, accel_vib_mov(:,1), 'r--', 'LineWidth', 1);
plot(t, accel_filtered_kalman(:,1), 'k-', 'LineWidth', 1.5);
title('Kalman Filter Compensation (X-axis)');
xlabel('Time (s)'); ylabel('Acceleration (m/s²)');
legend('Clean', 'Vibrating', 'Kalman Filtered', 'Location', 'best');
grid on;

% Plot 5: Frequency domain comparison
subplot(3,3,5);
[P_orig, f] = periodogram(accel_vib_mov(:,1), [], [], Fs);
[P_filt, ~] = periodogram(accel_filtered_notch(:,1), [], [], Fs);
semilogx(f, 10*log10(P_orig), 'r-', 'LineWidth', 1.5); hold on;
semilogx(f, 10*log10(P_filt), 'c-', 'LineWidth', 1.5);
title('Frequency Domain: Before/After Notch');
xlabel('Frequency (Hz)'); ylabel('PSD (dB/Hz)');
legend('Original', 'Notch Filtered', 'Location', 'best');
grid on;

% Plot 6: Error comparison for all methods
subplot(3,3,6);
plot(t, error_lp(:,1), 'b-', 'LineWidth', 1); hold on;
plot(t, error_notch(:,1), 'c-', 'LineWidth', 1);
plot(t, error_adaptive(:,1), 'm-', 'LineWidth', 1);
plot(t, error_kalman(:,1), 'k-', 'LineWidth', 1);
title('Filtering Errors (X-axis)');
xlabel('Time (s)'); ylabel('Error (m/s²)');
legend('Low-Pass', 'Notch', 'Adaptive', 'Kalman', 'Location', 'best');
grid on;

% Plot 7: RMSE comparison bar chart
subplot(3,3,7);
methods = {'Low-Pass', 'Notch', 'Adaptive', 'Kalman'};
rmse_all = [rmse_lp(1), rmse_notch(1), rmse_adaptive(1), rmse_kalman(1)];
bar(rmse_all);
set(gca, 'XTickLabel', methods);
title('RMSE Comparison (X-axis)');
ylabel('RMSE (m/s²)');
grid on;

% Plot 8: Vibration detection visualization
subplot(3,3,8);
semilogx(f, 10*log10(Pxx_clean), 'g-', 'LineWidth', 1.5); hold on;
semilogx(f, 10*log10(Pxx_vib), 'r-', 'LineWidth', 1.5);
yline(10*log10(vibration_threshold), 'k--', 'LineWidth', 2);
title('Vibration Detection');
xlabel('Frequency (Hz)'); ylabel('PSD (dB/Hz)');
legend('Clean Signal', 'Vibrating Signal', 'Detection Threshold', 'Location', 'best');
grid on;

% Plot 9: Multi-axis performance summary
subplot(3,3,9);
performance_matrix = [rmse_lp; rmse_notch; rmse_adaptive; rmse_kalman];
imagesc(performance_matrix);
colorbar;
set(gca, 'XTickLabel', {'X', 'Y', 'Z'});
set(gca, 'YTickLabel', methods);
title('RMSE Performance Matrix');
xlabel('Axis'); ylabel('Method');

sgtitle('Vibration Compensation Algorithm Comparison');

%% Step 7: Performance Summary and Recommendations
fprintf('\n=== Step 7: Performance Summary ===\n');

fprintf('Method Performance Comparison (RMSE):\n');
fprintf('                X-axis   Y-axis   Z-axis   Average\n');
fprintf('Low-Pass:      %.4f   %.4f   %.4f   %.4f\n', rmse_lp, mean(rmse_lp));
fprintf('Notch:         %.4f   %.4f   %.4f   %.4f\n', rmse_notch, mean(rmse_notch));
fprintf('Adaptive:      %.4f   %.4f   %.4f   %.4f\n', rmse_adaptive, mean(rmse_adaptive));
fprintf('Kalman:        %.4f   %.4f   %.4f   %.4f\n', rmse_kalman, mean(rmse_kalman));

% Find best method
avg_rmse = [mean(rmse_lp), mean(rmse_notch), mean(rmse_adaptive), mean(rmse_kalman)];
[min_rmse, best_idx] = min(avg_rmse);
fprintf('\nBest performing method: %s (RMSE: %.4f m/s²)\n', methods{best_idx}, min_rmse);

%% Step 8: Save Results
fprintf('\n=== Step 8: Saving Results ===\n');

% Save all compensation results
save('imu_vibration_compensation_results.mat', ...
     'accel_filtered_lp', 'accel_filtered_notch', 'accel_filtered_adaptive', 'accel_filtered_kalman', ...
     'gyro_filtered_lp', 'gyro_filtered_notch', ...
     'rmse_lp', 'rmse_notch', 'rmse_adaptive', 'rmse_kalman', ...
     'vibration_frequencies', 'vibration_present', 't', 'methods');

fprintf('✓ Compensation results saved to: imu_vibration_compensation_results.mat\n');
fprintf('✓ Part 2 (Vibration Compensation) completed successfully!\n\n');

% Display final summary
fprintf('SUMMARY - Part 2: Vibration Compensation\n');
fprintf('========================================\n');
fprintf('• Implemented vibration detection using frequency domain analysis\n');
fprintf('• Developed and compared 4 compensation algorithms:\n');
fprintf('  1. Low-Pass Filtering (removes high-freq vibration)\n');
fprintf('  2. Notch Filtering (targets specific frequencies)\n');
fprintf('  3. Adaptive Filtering (adjusts to local conditions)\n');
fprintf('  4. Kalman Filtering (optimal estimation approach)\n');
fprintf('• Best method: %s with %.4f m/s² average RMSE\n', methods{best_idx}, min_rmse);
fprintf('• Successfully demonstrated vibration detection and compensation\n\n');

fprintf('Practical Recommendations:\n');
fprintf('• Use notch filters when vibration frequencies are known and stable\n');
fprintf('• Use low-pass filters for general high-frequency vibration suppression\n');
fprintf('• Use adaptive methods when vibration characteristics vary over time\n');
fprintf('• Use Kalman filters when system dynamics are well understood\n');
fprintf('• Consider hybrid approaches combining multiple techniques\n\n');

%% Helper function
function str = bool2str(val)
    if val
        str = 'DETECTED';
    else
        str = 'NOT DETECTED';
    end
end