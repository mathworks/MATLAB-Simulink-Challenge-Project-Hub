## THIS PAGE IS UNDER CONSTRUCTION 06/03/26
KZ to do: custom resources for NACME NVB (presentation guidelines, teamwork agreement, assessment rubric for the presentation, requirements), sensor data set directory with README on what's included in each data set (units e.g.)

<table>
<td><img src = "https://gist.githubusercontent.com/kathyz95/994fc5648a3196512e3a7b7612a04849/raw/0dd9f3b65449acfebe67cf5fb770fd062bd07d83/apps.jpg" width = 500/></td>
<td><p><h1>Data Analytics Apps for a Smart Eco Gym</h1></p>
<p>Design interactive apps that transform real-world sensor data into actionable insights across engineering disciplines.</p>
</table>

## Motivation
From optimizing energy use in smart buildings to tracking performance in wearable fitness devices and monitoring equipment in manufacturing systems, engineers build and rely upon data analytics app (also known as sensor monitoring dashboards) to make sense of large volumes of sensor data. These applications enable faster decision-making, improved efficiency, and better user experiences by translating raw data into intuitive visual insights. In this challenge, you will design your own data analytics app to support decision-making in an eco-friendly gym.

## Project Description
You have been hired by a next-generation, eco-friendly gym that is looking to incorporate new features to improve member experiences while increasing energy efficiency. The gym has collected a wide variety of sensor data and is seeking intuitive, user-friendly tools to help them make data-driven decisions.

In this project, you will design and build an interactive sensor monitoring dashboard in MATLAB that converts raw sensor data into clear, actionable metrics and insights. Your minimum viable product (MVP) should be able to process real-world data, compute meaningful metrics, and present results through an intuitive user interface.

You will begin by exploring a shared dataset containing sensor measurements from different gym systems, such as wearable devices, equipment energy usage, environmental conditions, or building infrastructure. Based on your chosen engineering discipline, you will identify relevant signals, apply basic data processing techniques (e.g., filtering, smoothing, or classification), and define, compute, and display metrics that help answer a specific question. For example, accelerometer and heart rate data from wearable devices can be used to calculate metrics such as steps taken, stairs climbed, calories burned, or metabolic rate to form the basis of a fitness tracking app. Similar approaches can be applied across disciplines to evaluate airflow, energy efficiency, air quality, or structural safety.

Your MVP should not only visualize data, but also enable users to interact with the dashboard and easily interpret key insights. The project will culminate in a presentation or report where you will describe your app's functionality, explain design decisions and tradeoffs, and communicate how your solution supports real-world, data-driven decision-making in a smart eco-friendly gym.

### Project Requirements
1.	Your user interface must accept/import a .mat file as an input (raw sensor data)
2.	You must compute at least one metric
3.	You must perform at least one data processing step on raw data (e.g. smoothing, filtering, classifying etc.)
4.	Your user interface must include at least one interactive component (e.g. a button press, somewhere where the user provides input etc.)
5.	Your user interface must include at least one graph and one visual indicator (e.g. heatmap, colored alert signal etc.)
6.	Your code must run entirely in MATLAB
7.	Your code must be shared as a GitHub repository with detailed documentation that clearly explains to a new user how to download, use, and understand your app's functionalities

### Mini Design Challenges
You will have access to one big raw sensor dataset. Based on your interest in a specific engineering discipline, choose the challenge and associated data you want to work with and pick which metrics you think are appropriate to compute and display in your app. Below, you will find additional information pertaining to each mini challenge: 
1. The goal you are aiming to achieve with your app, framed as a question that your data analytics should help answer
2. Suggested sensor data to choose from the larger dataset
3. Suggested metrics to compute from the raw sensor data
4. Suggested features to include in your interactive user interface
5. Key questions to drive engineering thinking and decision-making

**Note**: You can choose to compute *any* metrics from all available sensor data and include *any* features in your app that you believe help to achieve the overarching goal for the user. The suggestions are to provide inspiration to help you get started.

<table>
<tbody>
<td><p align="center">
<img src="https://gist.githubusercontent.com/kathyz95/994fc5648a3196512e3a7b7612a04849/raw/0dd9f3b65449acfebe67cf5fb770fd062bd07d83/biomed.png" width = 200 /></p>
</td>
<td><h3>Biomedical Engineering: Human Performance and Efficiency Metrics</h3>
<p>The gym wants to offer a personalized fitness tracking app for each of its members.</p></td></tbody>
<tbody><td><strong>Goal</strong></td><td>What is your workout efficiency?</td></tbody>
<tbody><td><strong>Suggested Sensor Data</strong></td>
    <td>Accelerometer (X, Y, Z accerelation over time), heart rate</td></tbody>
<tbody><td><strong>Suggested Metrics to Compute</strong></td>
    <td>Calories burned, time spent in different heart rate zones, activity classification (walking, running, lifting), a 'workout intensity' score</td></tbody>
<tbody><td><strong>Suggested Dashboard Features</strong></td>
    <td>Fitness summary panel, progress indicators, personalized user feedback (e.g. user inputs workout details and specific goals, app provides feedback based on most recent workout session and suggestions for the next workout)</td></tbody>
<tbody><td><strong>Key Questions for Engineering Thinking</strong></td>
    <td>- What does it mean for a workout to be 'efficient' and how might that vary between individuals?<br>
    - How could your app provide feedback that meaningfully changes user behavior?<br>
    - How do different types of activity (e.g., cardio v. strength training) affect the metrics you choose to compute and display?</td>
</tbody>
</table>
    
<table>
<tbody>
<td><p align="center">
<img src="https://gist.githubusercontent.com/kathyz95/994fc5648a3196512e3a7b7612a04849/raw/57a9112a779017fd59bc51960ac56f925316ddca/fan.png" width = 150 /></p>
</td>
<td><h3>Mechanical and Aerospace Engineering: Improving Natural Air Circulation</h3>
<p>The gym management is deciding what ceiling fans to install, and wants to compare air circulation efficiency across fans with different blade designs</p></td></tbody>
<tbody><td><strong>Goal</strong></td><td>Which ceiling fan blade design circulates air most efficiently?</td></tbody>
<tbody><td><strong>Suggested Sensor Data</strong></td>
    <td>For different blade designs (e.g. flat v. curved balde, short v. long blade, high pitch angle v. low pitch angle) - air velocity at multiple locations, fan rotation speed, temperature distribution, power consumption</td></tbody>
<tbody><td><strong>Suggested Metrics to Compute</strong></td>
    <td>Air velocity/uniformity around the fan and across space, temperature reduction across time and space, airflow variability, airflow per unit power (energy efficiency)</td></tbody>
<tbody><td><strong>Suggested Dashboard Features</strong></td>
    <td>Design selector (dropdown menu for different blade types), visualizations that clearly show comparisons of computed metrics across different blade designs, heatmap of airflow distribution</td></tbody>
<tbody><td><strong>Key Questions for Engineering Thinking</strong></td>
    <td>- How do design parameters (blade shape, pitch angle, length) influence airflow distribution?<br>
    - How do you define "effective air circulation"?<br>
    - What tradeoffs exist between airflow performance and energy efficiency?</td>
</tbody>
</table>

<table>
<tbody>
<td><p align="center">
<img src="https://gist.githubusercontent.com/kathyz95/994fc5648a3196512e3a7b7612a04849/raw/04bacf5ad9f56442d74b120157e0da7fd1c2812a/greenenergy.jpg" width = 450 /></p>
</td>
<td><h3>Electrical and Environmental Engineering: Energy and Sustainability Tracking</h3>
<p>The gym management wants to track energy consumption of different gym machines. They have also recently purchased a few specialized treadmills that can transform gym members' usage into electricity (i.e. running on the treadmill generates electricity) and they want to evaluate the renewable energy generation before deciding whether to purchase more. </p></td></tbody>
<tbody><td><strong>Goal</strong></td><td>Are our machines efficient and how green is the gym?</td></tbody>
<tbody><td><strong>Suggested Sensor Data</strong></td>
    <td>Voltage/current from gym equipment, power usage over time, renewable energy generation from specialized treadmills and bikes</td></tbody>
<tbody><td><strong>Suggested Metrics to Compute</strong></td>
    <td>Energy consumption (kWh), idle v. active energy waste, energy use per person, carbon footprint estimate, % renewable energy contribution, an 'energy efficiency' score</td></tbody>
<tbody><td><strong>Suggested Dashboard Features</strong></td>
    <td>Real-time energy usage graphs, alerts for inefficient machines, 'top energy-consuming equipment' chart, energy usage breakdown by system, 'energy generated by members today' from specialized treadmills and bikes</td></tbody>
<tbody><td><strong>Key Questions for Engineering Thinking</strong></td>
    <td>- What patterns can you observe in energy usage over time?<br>
    - How do determine whether a machine or system is "efficient"?<br>
    - How can renewable energy contributions (from energy-generating gym euipment) be incorporated to improve the gym's overall sustainability?</td>
</tbody>
</table>


*Chemical Engineering*: Air Quality and Ventilation Efficiency
Add in some context about what the gym wants from this; key questions for engineering thinking
1. **Goal**: How healthy is the air?
2. **Suggested Sensor Data**: CO2 air concentration, humidity, temperature, concentration of volatile organic compounds
3. **Suggested Metrics to Compute**: Air quality index, ventilation effectiveness (CO2 decay rate), sweat/odor buildup (proxy via humidity and volatile organic compounds)
4. **Suggested Dashboard Features**: Color-coded 'air quality score', heatmap of sweat/odor buildup, real-time recommendations (e.g. 'increase ventilation'), trends over time

*Civil Engineering*: Structural Load and Space Utilization
Add in some context about what the gym wants from this; key questions for engineering thinking
1. **Goal**: Is the gym space safe and efficient?
2. **Suggested Sensor Data**: Floor vibration/accelerometer, occupancy counts
3. **Suggested Metrics to Compute**: Peak floor vibration levels, estimated load distribution (people per area), 'overcrowding risk index', space utilization rate (% capacity)
4. **Suggested Dashboard Features**: Heatmap of crowded zones, alerts for high vibration/load areas, 'best times to use each area', suggestions for improved layout or scheduling changes

### Suggested Steps
Open the "SensorDashboard_StudentProjectTemplate.mlx" Live Script in MATLAB as a starting point for your project. The Live Script contains more detailed information for each of the suggested steps. These are generic suggested steps applicable to each of the mini design challenges. Adapt the suggestions for the specific mini challenge you choose.

1. Define the Problem and Goal
   - Identify the specific question you want to answer
   - Determine who your end user is and what decisions they need to make
2. Explore and Understand the Data
   - Decide what sensor data is relevant for your problem and goal
   - Load and inspect your chosen sensor data
   - Identify and understand the relevant variables (e.g. time, location, signal type)
   - Make a quick `plot` of the data to look for patterns, trends, and anomalies
3. Process and Prepare the Data
   - Clean and organize the data
   - Apply basic processing techniques such as: filtering or smoothing, aggregating values over time, classifying or segmenting data, etc.
4. Define Meaningful Metrics
   - Decide what metrics best capture the behavior or performance of the system your mini challenge focuses on
   - Ensure your metrics: are easy to interpret, help answer your overarching question, could inform a real decision
5. Design and Build Your App
   - Develop an interactive MATLAB app (e.g. using App Designer) that:
       - Imports data (e.g. from a `.mat` file using `load`)
       - Processes the data and computes your selected metrics
       - Includes at least one user interaction element, such as: dropdown menu, button, slider, etc.
       - Updates outputs dynamically based on user interaction
   - *Tips*:
       - Structure your app workflow as follows: Input &rarr; Processing &rarr; Metrics &rarr; Visualization
       - Organize your code so that data loading happens in one function, metric calculations are handled in separate functions, updates are triggered by user interaction
       - Write reusable functions for data processing and metric calculations to make your app easier to debug and extend
6. Visualize and Communicate Results for your App User Interface (UI)
   - Choose visualizations that clearly connect data &rarr; metric &rarr; insight; for example:
       - Time-series plots (e.g., sensor values over time)
       - Bar charts or comparisons (e.g., across designs or zones)
       - Heatmaps (e.g., spatial distributions like airflow or occupancy)
   - Use MATLAB functions for effective plotting; for example:
       - `plot`, `scatter`, or `bar` for comparisons
       - `imagesc` or `heatmap` for spatial data
       - Add labels, title, and legends for easy interpretation
   - Design for a non-expert audience
       - Highlight key results using, for example, color indicators (e.g., green = good, red = alert) and simple summary values
       - Avoid overwhelming the user with raw data and focus instead on interpretable outputs
   - Provide context for your results by adding text labels or annotations that explain what metrics represent and why they matter
       - For example, instead of just showing a number, display "High energy use detected"
   - Ensure your visuals respond to interaction
       - Update plots when users, for example, select a different dataset or change a parameter
       - Remember that your app is not just a static display, but rather a tool for decision-making
7. Evaluate and Refine Your Solution
   - Test your app with different inputs or scenarios
   - Consider, for example: Does your app answer the original question? Are the results clear and useful? What tradeoffs did you make in your design?
8. Present Your Work
   - Prepare your code for submission as a GitHub repository with clear documentation
       - Follow [these guidelines](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/tree/main/Classroom%20Challenge%20Projects#instructions-for-nominated-project-solution-submissions-) for your repository
       - New to GitHub? Check out these [introductory resources](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/tree/main/Classroom%20Challenge%20Projects/GitHub%20Resources) 
   - Prepare either a presentation or a report that clear communicates:
       - Your goal and approach
       - Key design decisions and tradeoffs
       - A demonstration of your app's functionality
       - Potential next steps or improvements      

### Expected Results for Project Solution
1. MATLAB App and any supporting code, submitted as a public GitHub repository with a descriptive README file
   - A functional MATLAB app (`.mlapp`) that meets the project requirements listed above
   - Any additional `.m` files for supporting/helper functions
   - Ensure your code is well-organized and well-documented with comments
2. Presentation or report that states the problem, goal, and approach, key design decisions and tradeoffs, app demo or walkthrough, and next steps or improvements

*Remember*: Overall, your project solution should function as a complete, usable data analytics app that clearly connects data &rarr; metrics &rarr; insights &rarr; decisions

### Learning Outcomes
- Analyze sensor data to identify patterns, trends, and relevant signals that inform engineering decisions.
- Develop an interactive data analytics app in MATLAB that processes raw data, computes meaningful metrics, and communicates results through clear visualizations.
- Evaluate design tradeoffs by interpreting computed metrics and assessing how effectively the solution supports data-driven decision-making for a non-expert audience.
- Apply concepts and methods from a specific engineering discipline to develop a data-driven solution that addresses a real-world performance, efficiency, or user experience challenge.

## Suggested Background Material
### 1. Data Analytics and Engineering Design
- Basics of data analysis and intepretation (trends, comparisons, etc.)
- Understanding sensor data (time-series data, sampling, noise, etc.)
- Basic data processing techniques (smoothing, filtering, aggregation, etc.)
- Designing meaningful metrics that support decision-making
- Principles of data visualization (clarity, labeling, choosing appropriate plots, etc.)
- Basics of the engineering design process (problem, definition, tradeoffs, iteration, etc.)
- Designing for a non-expert audience (clear communication, simple interfaces, etc.)

### 2. Discipline-Specific Background Topics (suggestions *only*, with a focus on conceptual understanding)
- Biomedical Engineering
    - Making interpretations about motion from acceleration signals collected from a wearable sensor
    - Estimating activity and energy expenditure from physiological signals
- Mechanical and Aerospace Engineering
    - Relating fan design to airflow behavior (motion &rarr; fluid response)
    - Assessing how air moves through space
    - Evaluating performance vs energy use
- Electrical and Environmental Engineering
    - Relating power usage to total energy consumption
    - Identifying inefficient operating patterns (time-series analysis to detect periods of high energy use, e.g.)
    - Evaluating sustainability performance (compaing energy use, occupancy, and renewable contributions, e.g.)
- Chemical Engineering
    - Tracking air quality changes over time
    - Relating ventilation to air quality improvement
    - Combining multiple signals into meaningful air quality metrics
- Civil Engineering
    - Relating occupancy to structural behavior
    - Assessing structural performance using vibration data
    - Evaluating space usage and load distribution      

### 3. MATLAB Fundamentals
- Importing data (e.g., `load` for `.mat` files)
- Working with data structures (e.g. arrays, tables, matrices, vectors)
- Writing basic scripts and functions
- Applying simple data processing (e.g. `movmean`, filtering)
- Creating and customizing plots (e.g. `plot`, `bar`, `scatter`, `heatmap`, adding titles, labels, and legends)
- Building apps using MATLAB App Designer (adding UI components and writing callbacks to respond to user input)

## Optional Extensions
1. Combine several mini challenges to build a comprehensive smart gym app
   - For example, combine occupancy, air quality, and energy use data to provide users with a live recommendation of the "best" place to work out
2. Make your app as efficient as possible by creating the most informative dashboard you can with the fewest but most meaningful metrics

## MathWorks Tutorials and Helpful Resources
### Getting Started with MATLAB
- [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted)
- [Beginners' Guide on 'How To' with MATLAB Video Playlist](https://www.youtube.com/playlist?list=PLn8PRpmsu08popSwGbmiRoH3PZIXoXXP8)

### Building Apps with MATLAB
- [App Designer Onramp](https://matlabacademy.mathworks.com/details/app-building-onramp/orab)
- [Overview of App Designer Capabilities](https://www.mathworks.com/products/matlab/app-designer.html)
- [Video: Getting Started with App Designer](https://www.mathworks.com/videos/app-designer-overview-1510748719083.html)
- [Video: How To Build a GUI in MATLAB with App Designer](https://www.youtube.com/watch?v=nb0jHVXKY2w)
- [Interactive Tutorial: Create and Run a Simple App using App Designer](https://www.mathworks.com/help/matlab/creating_guis/create-a-simple-app-or-gui-using-app-designer.html)

### Introduction to Data Analysis and Visualization
- [Documentation for Data Import and Analysis](https://www.mathworks.com/help/matlab/data-import-and-analysis.html)
- [Documentation for MATLAB Graphics](https://www.mathworks.com/help/matlab/graphics.html)
- [Online Course: Clean and Prepare Data for Analysis](https://matlabacademy.mathworks.com/details/clean-and-prepare-data-for-analysis/otmlpda)
- [Online Course: Common Data Analysis Techniques](https://matlabacademy.mathworks.com/details/common-data-analysis-techniques/otmldat)
- [Online Course: Explore Data with MATLAB Plots](https://matlabacademy.mathworks.com/details/explore-data-with-matlab-plots/otmledp)
- [Statistics Onramp](https://matlabacademy.mathworks.com/details/statistics-onramp/orst)

### More Advanced Data Analysis Methods
Depending on the type of metrics you want to compute, you may consider other helpful MathWorks resources:
- [Signal Processing Onramp](https://matlabacademy.mathworks.com/details/signal-processing-onramp/signalprocessing)
- [Machine Learning Onramp](https://matlabacademy.mathworks.com/details/machine-learning-onramp/machinelearning)
- [Online Course: Classification Methods with Machine Learning](https://matlabacademy.mathworks.com/details/classification-methods-with-machine-learning/otmlcmml)


## Project Difficulty
- Beginner
    - High school senior
    - Matriculating or 1st-year undergraduate student
    - 1st or 2nd year community college student
