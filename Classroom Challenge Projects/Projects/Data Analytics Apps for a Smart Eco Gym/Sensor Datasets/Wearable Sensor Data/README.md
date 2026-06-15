# Wearable Sensor Data
This dataset contains synthetic wearable sensor data representing one day of workout sessions from anonymized gym members.

## Files

* `wearable_sensor_data.mat` — main MATLAB dataset
* `wearable_person_metadata.csv` — person-level metadata as a CSV file
* `wearable_session_summary.csv` — one-row-per-session summary table

## Dataset overview

* Number of workout sessions: **35**
* Number of people: **23**
* Time span: **one day**
* Sampling rate for wearable sensor signals: **10 Hz**
* Activity types: **7**
* Sessions per activity type: **5**

Session distribution across people:

* 13 people have 1 session
* 8 people have 2 sessions
* 2 people have 3 sessions

## Top-level variables in the `.mat` file

After loading the `.mat` file, you should see three top-level variables:

```matlab
sessions
people
activity_met_reference
```

## `sessions`

`sessions` is a structure array. Each `sessions(i)` represents one workout session from one person.

Number of elements:

```matlab
35 sessions
```

Each session contains metadata and sensor signals.

### Session metadata fields

| Field            | Description                               | Units / format    |
| ---------------- | ----------------------------------------- | ----------------- |
| `session_id`     | Unique session ID                         | text, e.g. `S001` |
| `person_id`      | Anonymous participant ID                  | text, e.g. `P01`  |
| `fitness_goal`   | Participant's fitness goal                | text label        |
| `activity_type`  | Main workout activity                     | text label        |
| `start_time_sec` | Session start time measured from midnight | seconds           |
| `end_time_sec`   | Session end time measured from midnight   | seconds           |
| `start_time_24h` | Human-readable session start time         | `HH:MM:SS`        |
| `end_time_24h`   | Human-readable session end time           | `HH:MM:SS`        |

### Sensor signal fields

| Field               | Description                                          | Units / format                   | Dimensions |
| ------------------- | ---------------------------------------------------- | -------------------------------- | ---------- |
| `time`              | Time since the start of the session                  | seconds                          | `n x 1`    |
| `time_of_day_hours` | Clock time for each sample using a 24-hour time base | hours after midnight             | `n x 1`    |
| `accel_x`           | Wearable acceleration, x-axis                        | m/s²                             | `n x 1`    |
| `accel_y`           | Wearable acceleration, y-axis                        | m/s²                             | `n x 1`    |
| `accel_z`           | Wearable acceleration, z-axis                        | m/s²                             | `n x 1`    |
| `heart_rate`        | Heart rate                                           | beats per minute, bpm            | `n x 1`    |
| `cadence`           | Cycling cadence                                      | rpm for cycling, `NaN` otherwise | `n x 1`    |

The value of `n` depends on the session duration. In this dataset, session lengths range from about **16.5 to 43 minutes**, with signal lengths from about **9,901 to 25,801 samples**.

## Activity labels

The `activity_type` field has one of the following labels:

```matlab
walking
treadmill_running
cycling
elliptical
weight_lifting
bodyweight_training
yoga
```

There are 5 sessions for each activity type.

## Fitness goal labels

The `fitness_goal` field has one of the following labels:

```matlab
weight_loss
endurance
strength
general_fitness
```

## `people`

`people` is a structure array containing person-level metadata.

Number of elements:

```matlab
23 people
```

Each `people(i)` contains:

| Field                  | Description                        | Units / format                            |
| ---------------------- | ---------------------------------- | ----------------------------------------- |
| `person_id`            | Anonymous participant ID           | text, e.g. `P01`                          |
| `fitness_goal`         | Participant's general fitness goal | text label                                |
| `age_years`            | Age                                | years                                     |
| `height_cm`            | Height                             | cm                                        |
| `weight_kg`            | Weight                             | kg                                        |
| `fitness_level`        | General fitness level              | `beginner`, `intermediate`, or `advanced` |
| `resting_hr_bpm`       | Estimated resting heart rate       | bpm                                       |
| `estimated_max_hr_bpm` | Estimated maximum heart rate       | bpm                                       |
| `bmr_kcal_day`         | Estimated baseline metabolic rate  | kcal/day                                  |

The `person_id` field links `sessions` and `people`.

## `activity_met_reference`

`activity_met_reference` is a lookup table for approximate MET values by activity type.

| activity_type         | typical_MET | Notes                                             |
| --------------------- | ----------: | ------------------------------------------------- |
| `walking`             |         3.3 | Moderate/brisk walking                            |
| `treadmill_running`   |         9.8 | Moderate-to-vigorous running                      |
| `cycling`             |         7.5 | Stationary cycling at moderate-to-vigorous effort |
| `elliptical`          |         5.0 | Elliptical trainer at moderate effort             |
| `weight_lifting`      |         3.5 | General weight training with rest intervals       |
| `bodyweight_training` |         6.0 | Calisthenics/bodyweight circuit                   |
| `yoga`                |         2.5 | General yoga/stretching                           |

A simple estimate of activity energy expenditure is:

```matlab
calories = MET * weight_kg * duration_hours;
```

## Time base

Each session has two time systems:

1. `time`: seconds since the start of that workout session
2. `time_of_day_hours`: clock time for each sample on a 24-hour scale

For example, a value of `13.5` in `time_of_day_hours` means 13:30, or 1:30 PM.

Use `time` when comparing signals within a workout session. Use `time_of_day_hours` when plotting when events occurred during the day.

## Missing values

Some sensor values contain `NaN`. These represent brief synthetic sensor dropouts.

The `cadence` variable is only meaningful for cycling sessions. For all non-cycling sessions, `cadence` is `NaN`.

## Domain assumptions

* Heart rate is measured in beats per minute.
* Acceleration is measured in m/s².
* The z-axis acceleration includes a gravity-like baseline.
* Heart rate does not change instantly when activity intensity changes; the synthetic data include a delayed heart-rate response.
* MET values are approximate reference values for estimating energy expenditure.
* `bmr_kcal_day` is already provided, so students do not need to calculate BMR from age, height, weight, or sex-based equations.
* Walking and treadmill-running sessions may support step-count estimates from acceleration patterns.
* Step count is generally not meaningful for cycling, weight lifting, bodyweight training, or yoga.

