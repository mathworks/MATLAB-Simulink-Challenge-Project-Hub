# Floor Vibration and Space Utilization Sensor Data

This dataset contains synthetic floor vibration sensor data representing one day of floor-mounted vibration measurements across different gym zones.

The goal is to use MATLAB to analyze floor vibration, structural response, space utilization, and overcrowding risk for a non-expert gym management or gym member audience.

All data are synthetic. They are designed for introductory engineering analysis and MATLAB App Designer dashboards. They should not be interpreted as measurements from a real building or as professional structural safety guidance.

## Files

### MATLAB data files

* `floor_vibration_sensor_locations.mat` — floor vibration sensor locations
* `floor_vibration_acceleration.mat` — floor vibration acceleration metrics
* `structural_response_reference.mat` — simplified structural response reference assumptions

### CSV metadata and summary files

* `floor_vibration_sensor_locations.csv` — floor vibration sensor location metadata as a CSV file
* `structural_response_reference.csv` — simplified structural response reference assumptions as a CSV file
* `floor_vibration_event_summary.csv` — summary of high-vibration events

## Related shared files

Zone metadata and zone occupancy are provided separately in the shared zone/occupancy data folder.

These shared files are needed for some space utilization, load distribution, and overcrowding calculations.

Related shared files:

* `zone_metadata.mat` / `zone_metadata.csv`
* `zone_occupancy.mat` 

This vibration dataset can be linked to the shared zone data using:

```matlab
zone_id
zone_name
time_sec
time_24h
```

## Dataset overview

* Time span: **one day**
* Sampling interval: **1 minute**
* Number of gym zones: **5**
* Number of floor vibration sensors: **15**
* Sensors per zone: **3**
* Floor vibration rows: **21,600**
* High-vibration event summary rows: **93**
* Structural response reference rows: **1**
* Main gym room size: **10 m x 8 m**
* Main gym ceiling height: **3.0 m**

The vibration data are provided as **1-minute windowed summary metrics**, not raw high-frequency accelerometer waveforms.

## Gym zones

The dataset uses the same five gym zones as the shared zone/occupancy data:

| zone_id | zone_name          |
| ------- | ------------------ |
| `Z01`   | `cardio_zone`      |
| `Z02`   | `free_weight_zone` |
| `Z03`   | `yoga_studio`      |
| `Z04`   | `locker_room`      |
| `Z05`   | `front_desk_lobby` |

## Top-level variables in the `.mat` files

Each `.mat` file contains one top-level variable.

| File                                   | Top-level variable              |  Dimensions |
| -------------------------------------- | ------------------------------- | ----------: |
| `floor_vibration_sensor_locations.mat` | `vibration_sensor_locations`    |     15 rows |
| `floor_vibration_acceleration.mat`     | `floor_vibration`               | 21,600 rows |
| `structural_response_reference.mat`    | `structural_response_reference` |       1 row |

Each top-level variable is stored as a MATLAB structure with fields that act like table columns.

## Linking variables

Use these variables to connect information across files:

| Variable    | Meaning                               |
| ----------- | ------------------------------------- |
| `zone_id`   | Identifies one gym zone               |
| `zone_name` | Human-readable gym zone name          |
| `time_sec`  | Time since midnight                   |
| `time_24h`  | Human-readable clock time             |

The vibration data can be linked to zone occupancy using `zone_id` and `time_sec`.

## `vibration_sensor_locations`

`vibration_sensor_locations` contains metadata for the 15 floor vibration sensors.

There are 3 vibration sensors in each gym zone.

Top-level variable:

```matlab
vibration_sensor_locations
```

Number of rows:

```matlab
15
```

Fields in `vibration_sensor_locations`:

| Field                    | Description                        | Units / format      | Dimensions |
| ------------------------ | ---------------------------------- | ------------------- | ---------: |
| `sensor_id`              | Unique vibration sensor ID         | text, e.g. `VB_L01` |     15 x 1 |
| `zone_id`                | Gym zone ID                        | text, e.g. `Z01`    |     15 x 1 |
| `zone_name`              | Gym zone name                      | text label          |     15 x 1 |
| `x_m`                    | x-position within the zone         | meters              |     15 x 1 |
| `y_m`                    | y-position within the zone         | meters              |     15 x 1 |
| `mounting_location`      | Sensor mounting location           | `floor`             |     15 x 1 |
| `floor_type`             | Simplified floor construction type | text label          |     15 x 1 |
| `near_equipment_or_area` | Nearby equipment or area           | text label          |     15 x 1 |

## `near_equipment_or_area` labels

The `near_equipment_or_area` field includes labels such as:

```matlab
treadmills
ellipticals_and_bikes
rowing_machines
dumbbell_area
squat_racks
free_weight_walkway
studio_front
studio_center
studio_back
locker_room_entrance
locker_aisle
shower_walkway
front_entry
front_desk_queue
waiting_area
```

These labels describe what each vibration sensor is near. They can help explain why some sensors show stronger or weaker vibration patterns.

## `floor_vibration`

`floor_vibration` contains floor vibration acceleration metrics.

Top-level variable:

```matlab
floor_vibration
```

Number of rows:

```matlab
21600
```

Each row represents one 1-minute vibration summary from one floor-mounted sensor.

Because there are 15 sensors and 1,440 minutes in one day:

```matlab
15 sensors x 1440 time points = 21600 rows
```

Fields in `floor_vibration`:

| Field                   | Description                                                        | Units / format | Dimensions |
| ----------------------- | ------------------------------------------------------------------ | -------------- | ---------: |
| `sensor_id`             | Floor vibration sensor ID                                          | text           | 21,600 x 1 |
| `zone_id`               | Gym zone ID                                                        | text           | 21,600 x 1 |
| `zone_name`             | Gym zone name                                                      | text label     | 21,600 x 1 |
| `time_sec`              | Time measured from midnight                                        | seconds        | 21,600 x 1 |
| `time_24h`              | Human-readable clock time                                          | `HH:MM:SS`     | 21,600 x 1 |
| `rms_accel_m_s2`        | Root-mean-square floor acceleration over the 1-minute window       | m/s²           | 21,600 x 1 |
| `peak_accel_m_s2`       | Maximum floor acceleration during the 1-minute window              | m/s²           | 21,600 x 1 |
| `dominant_frequency_Hz` | Main vibration frequency estimated during the 1-minute window      | Hz             | 21,600 x 1 |
| `vibration_event_flag`  | Whether a high-vibration event occurred during the 1-minute window | true/false     | 21,600 x 1 |

## `floor_vibration_event_summary`

`floor_vibration_event_summary.csv` summarizes high-vibration events detected in the vibration data.

Number of rows:

```matlab
93
```

Each row represents one high-vibration event at one sensor.

Fields in `floor_vibration_event_summary.csv`:

| Field                               | Description                                | Units / format     |
| ----------------------------------- | ------------------------------------------ | ------------------ |
| `event_id`                          | Unique vibration event ID                  | text, e.g. `SV001` |
| `sensor_id`                         | Sensor where the event occurred            | text               |
| `zone_id`                           | Gym zone ID                                | text               |
| `zone_name`                         | Gym zone name                              | text label         |
| `start_time_sec`                    | Event start time measured from midnight    | seconds            |
| `end_time_sec`                      | Event end time measured from midnight      | seconds            |
| `start_time_24h`                    | Human-readable event start time            | `HH:MM:SS`         |
| `end_time_24h`                      | Human-readable event end time              | `HH:MM:SS`         |
| `duration_min`                      | Event duration                             | minutes            |
| `max_peak_accel_m_s2`               | Maximum peak acceleration during the event | m/s²               |
| `mean_rms_accel_m_s2`               | Mean RMS acceleration during the event     | m/s²               |
| `likely_cause`                      | Simplified likely cause of the event       | text label         |
| `mean_occupancy_count_during_event` | Mean zone occupancy during the event       | people             |
| `max_occupancy_count_during_event`  | Maximum zone occupancy during the event    | people             |

## `likely_cause` labels

The `likely_cause` field includes:

```matlab
treadmill_peak_use
free_weight_drop
group_class_activity
locker_room_traffic
lobby_arrival_peak
```

These labels are simplified interpretations of the synthetic event patterns. Students may use them for comparison, but they are not required to use them in their own metrics.

## `structural_response_reference`

`structural_response_reference` is not sensor data. It contains simplified reference assumptions that students may use to calculate comfort, vibration, load, or overcrowding metrics.

Top-level variable:

```matlab
structural_response_reference
```

Number of rows:

```matlab
1
```

Fields in `structural_response_reference`:

| Field                                         | Value | Description                                                          | Units / format |
| --------------------------------------------- | ----: | -------------------------------------------------------------------- | -------------- |
| `comfort_rms_accel_m_s2`                      | 0.015 | Simplified comfort reference for RMS acceleration                    | m/s²           |
| `attention_rms_accel_m_s2`                    | 0.030 | Simplified level where vibration may be noticeable or worth flagging | m/s²           |
| `high_peak_accel_m_s2`                        | 0.080 | Simplified high-vibration event reference                            | m/s²           |
| `default_person_mass_kg`                      |    75 | Assumed average person mass for load estimates                       | kg             |
| `recommended_occupancy_density_people_per_m2` |  0.15 | Simplified reference for typical occupancy density                   | people/m²      |
| `high_occupancy_density_people_per_m2`        |  0.25 | Simplified reference for high occupancy density                      | people/m²      |
| `notes`                                       |  text | Short description of assumptions                                     | text           |

These reference values are simplified assumptions for student calculations. They are not building-code limits or professional structural safety limits.

## Time base

The vibration file uses time measured from midnight.

| Field      | Description               | Units / format |
| ---------- | ------------------------- | -------------- |
| `time_sec` | Time since midnight       | seconds        |
| `time_24h` | Human-readable clock time | `HH:MM:SS`     |

Use `time_sec` for calculations. Use `time_24h` for labels, tables, or dashboard displays.

## Missing values

The generated dataset includes a small number of synthetic missing values. These represent brief sensor dropouts.

Students should check for missing values before calculating summary metrics.

## Domain assumptions

* The data represent one synthetic day of floor vibration monitoring in a smart gym.
* The gym is divided into five zones: cardio zone, free weight zone, yoga studio, locker room, and front desk/lobby.
* The main gym room is modeled as a 10 m x 8 m space.
* The main gym ceiling height is modeled as 3.0 m.
* Floor vibration sensors are modeled as floor-mounted accelerometers.
* There are three vibration sensors in each gym zone.
* Sensor x- and y-positions are approximate locations within each zone.
* The vibration data are provided as 1-minute windowed summary metrics.
* The vibration data are not raw high-frequency accelerometer waveforms.
  * `rms_accel_m_s2` represents average vibration intensity over a 1-minute window.
  * `peak_accel_m_s2` represents the largest acceleration observed during a 1-minute window.
  * `dominant_frequency_Hz` represents the main vibration frequency estimated during a 1-minute window.
  * `vibration_event_flag` indicates that the synthetic data contain a high-vibration event during that 1-minute window.
* Higher occupancy can increase vibration, but the relationship is not perfectly linear.
* A high peak acceleration does not necessarily mean the average vibration level is high.
* A high RMS acceleration does not necessarily mean the peak acceleration is extreme.
* The provided structural response reference values are simplified assumptions for student calculations.
* The reference values are not building-code limits, safety limits, or professional engineering design criteria.
* There is no single required definition of when a space becomes crowded, uncomfortable, or unsafe.
