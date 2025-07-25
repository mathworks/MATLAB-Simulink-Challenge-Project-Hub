Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Processor-in-the-Loop%20Automotive%20Controller%20on%20an%20Arm%20Cortex-M7%20Fast%20Model%20Emulator&tfa_2=257)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Processor-in-the-Loop%20Automotive%20Controller%20on%20an%20Arm%20Cortex-M7%20Fast%20Model%20Emulator&tfa_2=257)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

This project is developed in collaboration with **Arm**. To earn recognition and rewards from **ARM developer Labs**, make sure you also submit your solution by following the Arm Developer Labs submission process on their [GitHub page](https://github.com/arm-university/Arm-Developer-Labs); it only take three minutes.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/pil.png"  width=600 /></td>
<td><p><h1>Processor-in-the-Loop Automotive Controller on an Arm Cortex-M7 Fast Model Emulator</h1></p>
<p>Verify a Simulink automotive controller by running processor-in-the-loop (PIL) tests on a virtual Arm Cortex-M7 processor.  </p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://developer.arm.com/" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/Arm_Logo.svg" width="600" style="display: block; margin: 0 auto;"><br>
   
</a>

## Motivation

Modern automotive systems—electric powertrains, brake-by-wire modules, adaptive cruise control, and emerging automated-driving features—depend on millions of lines of embedded code that must run deterministically on resource-constrained microcontrollers. In a model-based design workflow, engineers first build and validate a control model, then use automatic code-generation tools to convert that model directly into production C code. Processor-in-the-Loop (PIL) testing runs this automatically generated controller code on the real target processor—or on an instruction-accurate virtual replica—while the rest of the vehicle model and test scenarios stay in simulation. Because the code now executes as actual machine instructions, engineers can confirm two critical points well before any prototype electronics exist&#58; that the code still behaves exactly like the verified model and that it finishes every control cycle fast enough to meet real-time deadlines.
Within the industry-standard V-Model workflow, development flows from requirements to modelling to code generation, and each design step has a matching verification step. PIL is the check that follows model-level and software-level tests but comes before hardware-in-the-loop or track tests. By providing processor-accurate feedback at this stage, PIL exposes numerical, timing, and tool-chain issues early, cuts costly late rework, and supplies the traceability and coverage evidence demanded by safety-critical standards such as ISO 26262—making it a routine, essential practice for OEMs and Tier-1 suppliers.

## Project Description

Start with a prebuilt Simulink automotive control model and drive it through a complete model-based development and verification workflow. This includes defining detailed software requirements, designing test scenarios, generating C code from the controller subsystem, running processor-in-the-loop (PIL) tests on a virtual Arm Cortex M7 processor, analyzing execution time, and publishing a complete verification report.
### Suggested Steps

1. **Select Your Application and explore the Example**  
   Choose a built-in Simulink automotive example:  
   - [Automatic Climate Control](https://www.mathworks.com/help/simulink/slref/simulating-automatic-climate-control-systems.html)  
   - [Tire Pressure Monitoring System (TPMS)](https://www.mathworks.com/help/simulink/ug/wirelesss-tire-pressure-monitoring-system-with-fault-logging.html)  
   - [Anti-Lock Braking System (ABS)](https://www.mathworks.com/help/simulink/slref/modeling-an-anti-lock-braking-system.html)  

   Explore the controller subsystem, which will be the focus of your code generation and verification tasks.

2. **Define high level requirements**  
   Define high level requirements for the specific application of your choice. Examples of high-level requirements for the controllers in the selected applications are:  
   - **Automatic Climate Control:** The system shall maintain the cabin temperature within ±1 °C of the setpoint under all operating conditions.  
   - **Tire Pressure Monitoring System (TPMS):** The system shall detect and alert the driver of tire pressure deviations beyond 10 % of the recommended levels within 10 seconds of occurrence.  
   - **Anti-Lock Braking System (ABS):** The system shall prevent wheel lockup and maintain traction during braking events under all road conditions and vehicle speeds.  

   Use [Requirements Toolbox™](https://www.mathworks.com/products/requirements-toolbox.html) to transform the example’s narrative into formal, testable requirements.

3. **Modify or Redesign the Controller to meet your requirements**  
   Now that you have defined what the controller must do, test whether the controller in your example actually meets those goals.  
   - Run the model and log signals that relate to your requirements.  
   - Use scopes or signal logging to measure timing, response behavior, etc.  
   - If the controller fails any requirement, try:  
     - Adjusting controller parameters (e.g., gains, thresholds).  
     - Adding new logic (like limiters or timers).  
     - Replacing the controller entirely with your own Simulink blocks.  

   This step ensures the controller is realistic and compliant before moving forward.

4. **Design and Build Model-in-the-Loop (MIL) Test Cases**  
   Before running on the virtual processor, test your controller entirely in Simulink.  
   Use [Simulink Test™](https://www.mathworks.com/help/sltest/index.html?s_tid=CRUX_lftnav) to:  
   - Script real-world scenarios (e.g., braking on wet roads, sudden leaks).  
   - Add pass/fail logic with assertions or thresholds.  
   - Measure code coverage with [Simulink Coverage™](https://www.mathworks.com/help/slcoverage/index.html) — aim for &gt; 90 %.  

   These tests will be reused later during PIL execution.

5. **Prepare the Controller for Code Generation**  
   Use [Embedded Coder®](https://www.mathworks.com/help/ecoder/index.html) to inspect and prepare the controller subsystem:  
   - Use the [Code Generation Advisor](https://www.mathworks.com/help/ecoder/ug/configure-model-for-code-generation-objectives-using-code-generation-advisor.html) to check for compliance.  
   - Replace unsupported blocks and fix data type issues.  
   - Leave the plant model untouched—it runs in Simulink.

6. **Configure Code Generation for the Cortex-M7 Target and generate code**  
   Use Embedded Coder® to generate C code for the controller subsystem.  
   Two execution paths are available.  
   - **Virtual target — Arm Cortex-M7 Fast Models**  
     - See full process guide for support package installation, code generation, and PIL in the [Fast Model Support Package Workflow. pdf](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Processor-in-the-Loop%20Automotive%20Controller%20on%20an%20Arm%20Cortex-M7%20Fast%20Model%20Emulator/Fast%20Model%20Support%20Package%20Workflow.pdf) file.  
   - **Physical target – any Cortex-M7 dev kit** (e.g. STM32H7, NXP i.MX RT)  
     - Install the board-specific [Embedded Coder support package](https://www.mathworks.com/hardware-support/arm-cortex-m.html) and vendor tool-chain or GNU Arm GCC.

7. **Run Processor-in-the-Loop (PIL) Tests**  
   Enable PIL Mode for the controller subsystem and rerun your MIL test cases:  
   - Code executes on a physical or virtual Arm Cortex M7 processor.  
   - Simulink exchanges I/O data step-by-step.

8. **Publish the Verification Pack**  
   Compile your findings using Simulink Report Generator™ or a Live Script:  
   - Requirements traceability matrix  
   - Model and code snapshots  
   - MIL and PIL test results  

   Export as a single PDF and include your Simulink project folder for submission.

### Advanced project work

1. **Conduct Execution Profiling**  
   Capture execution time with the [Code Profile Analyzer](https://www.mathworks.com/help/ecoder/ref/codeprofileanalyzer-app.html) and analyze performance:  
   - Confirm execution time fits within your sample rate.

2. **Merge and Improve Coverage**  
   - Merge model and code coverage to exceed 95 %.  
   - Refine code, adjust solver settings, or enhance test cases as needed.

3. **Perform Static Code Analysis**  
   Run [Polyspace®](https://www.mathworks.com/products/polyspace.html) to check for runtime errors or MISRA C violations.

4. **Extend the Verification Report**  
   Add advanced sections to your final report:  
   - Code coverage and execution time analysis  
   - Polyspace or other code quality results  
   - A final conclusion on software readiness


## Background Material

- [MATLAB and Simulink for Verification and Validation](https://www.mathworks.com/solutions/verification-validation.html)  
- [ARM Cortex-M Support from Embedded Coder](https://www.mathworks.com/hardware-support/arm-cortex-m.html)  
- [ARM Fast models](https://developer.arm.com/Tools%20and%20Software/Fast%20Models)  
- [Simulink Test](https://www.mathworks.com/help/sltest/)  
- [Simulink Coverage](https://www.mathworks.com/help/slcoverage/index.html)  
- [Generate Code and Executables for Individual Subsystems](https://www.mathworks.com/help/rtw/ug/generate-code-and-executables-for-an-individual-subsystem.html)

## Impact

Accelerate automotive software validation with virtual processor testing.

## Expertise Gained 

Autonomous Vehicles, Automotive, Modeling and Simulation, Control

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/140) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

257
