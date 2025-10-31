%% Vibration Detection and Rejection from IMU Data - Complete Solution
% Single entry point to run the complete vibration detection and 
% compensation solution for IMU sensor data.
%
% This script executes both parts of the project:
%   Part 1: Vibration Model Development
%   Part 2: Vibration Compensation Algorithms
%
% Requirements:
%   - MATLAB R2020b or later
%   - Navigation Toolbox
%   - Signal Processing Toolbox
%
% Usage:
%   Simply run this script in MATLAB: run_solution
%
% Output:
%   - Comprehensive visualizations showing vibration models and compensation results
%   - Performance metrics comparing different filtering approaches
%   - Saved data files (.mat) for further analysis
%
% Author: Vimalkumar
% Date: October 2025

clear all; close all; clc;

fprintf('╔════════════════════════════════════════════════════════════════════╗\n');
fprintf('║  Vibration Detection and Rejection from IMU Data                  ║\n');
fprintf('║  Complete Solution Execution                                      ║\n');
fprintf('╚════════════════════════════════════════════════════════════════════╝\n\n');

%% Prerequisites Check
fprintf('Checking prerequisites...\n');
fprintf('----------------------------------------\n');

% Check MATLAB version
matlab_version = version('-release');
fprintf('✓ MATLAB Version: %s\n', matlab_version);

% Check required toolboxes
required_toolboxes = {'Navigation_Toolbox', 'Signal_Toolbox'};
toolbox_names = {'Navigation Toolbox', 'Signal Processing Toolbox'};
all_available = true;

for i = 1:length(required_toolboxes)
    if license('test', required_toolboxes{i})
        fprintf('✓ %s: Available\n', toolbox_names{i});
    else
        fprintf('✗ %s: NOT Available\n', toolbox_names{i});
        all_available = false;
    end
end

if ~all_available
    error('Missing required toolboxes. Please install them before running this solution.');
end

fprintf('\n');

%% Part 1: Vibration Model Development
fprintf('╔════════════════════════════════════════════════════════════════════╗\n');
fprintf('║  PART 1: Vibration Model Development                              ║\n');
fprintf('╚════════════════════════════════════════════════════════════════════╝\n\n');

fprintf('Executing Part 1: Creating IMU vibration model...\n');
fprintf('This will take approximately 30 seconds...\n\n');

try
    tic;
    run('part1_vibration_model.m');
    elapsed_time = toc;
    fprintf('\n✓ Part 1 completed successfully in %.1f seconds\n', elapsed_time);
    fprintf('  - Vibration model created\n');
    fprintf('  - IMU simulation data generated\n');
    fprintf('  - Results saved to: imu_vibration_simulation_data.mat\n');
catch ME
    fprintf('\n✗ Error in Part 1: %s\n', ME.message);
    fprintf('Stack trace:\n');
    for i = 1:length(ME.stack)
        fprintf('  %s (line %d)\n', ME.stack(i).name, ME.stack(i).line);
    end
    error('Part 1 failed. Please check the error messages above.');
end

fprintf('\n');
pause(2); % Brief pause for user to review Part 1 results

%% Part 2: Vibration Compensation Algorithms
fprintf('╔════════════════════════════════════════════════════════════════════╗\n');
fprintf('║  PART 2: Vibration Compensation Algorithms                        ║\n');
fprintf('╚════════════════════════════════════════════════════════════════════╝\n\n');

fprintf('Executing Part 2: Testing compensation algorithms...\n');
fprintf('This will take approximately 45 seconds...\n\n');

try
    tic;
    run('part2_vibration_compensation.m');
    elapsed_time = toc;
    fprintf('\n✓ Part 2 completed successfully in %.1f seconds\n', elapsed_time);
    fprintf('  - Vibration detection implemented\n');
    fprintf('  - Four filtering algorithms tested\n');
    fprintf('  - Performance comparison completed\n');
    fprintf('  - Results saved to: imu_vibration_compensation_results.mat\n');
catch ME
    fprintf('\n✗ Error in Part 2: %s\n', ME.message);
    fprintf('Stack trace:\n');
    for i = 1:length(ME.stack)
        fprintf('  %s (line %d)\n', ME.stack(i).name, ME.stack(i).line);
    end
    error('Part 2 failed. Please check the error messages above.');
end

%% Summary
fprintf('\n\n');
fprintf('╔════════════════════════════════════════════════════════════════════╗\n');
fprintf('║  EXECUTION COMPLETE                                                ║\n');
fprintf('╚════════════════════════════════════════════════════════════════════╝\n\n');

fprintf('All components executed successfully!\n\n');
fprintf('Generated Files:\n');
fprintf('  1. imu_vibration_simulation_data.mat - Vibration model data\n');
fprintf('  2. imu_vibration_compensation_results.mat - Compensation results\n');
fprintf('  3. Multiple figure windows with visualizations\n\n');

fprintf('Next Steps:\n');
fprintf('  - Review the generated figures for visual results\n');
fprintf('  - Check console output for performance metrics\n');
fprintf('  - Load .mat files for further analysis\n');
fprintf('  - See README.md for detailed documentation\n\n');

fprintf('Thank you for using this solution!\n');
fprintf('For questions or issues, please refer to the documentation.\n\n');

%% Helper function
function str = bool2str(bool_val)
    if bool_val
        str = 'DETECTED';
    else
        str = 'NOT DETECTED';
    end
end
