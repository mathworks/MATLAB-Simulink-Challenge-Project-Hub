# Ceiling Fan Blade Design Sensor Dataset

This dataset contains synthetic sensor data representing controlled tests of different ceiling fan blade designs in the same gym room.

The goal is to use MATLAB to compare airflow distribution, temperature mixing, fan rotation speed, power consumption, and energy efficiency across blade designs.

All data are synthetic. They are designed for introductory engineering analysis and MATLAB App Designer dashboards. They should not be interpreted as measurements from real ceiling fans, real buildings, or real gym equipment.

## Files

### MATLAB data files

* `fan_design_metadata.mat` — fan blade design information
* `fan_test_runs.mat` — test conditions for each fan design and speed setting
* `fan_sensor_locations.mat` — spatial locations of airflow and temperature sensors
* `fan_air_velocity.mat` — air velocity data for all fan designs
* `fan_temperature.mat` — temperature data for all fan designs
* `fan_rotation_speed.mat` — fan rotation speed data for all fan designs
* `fan_power_consumption.mat` — electrical power data for all fan designs

### CSV metadata and summary files

* `fan_design_metadata.csv` — fan blade design information as a CSV file
* `fan_test_runs.csv` — test run metadata as a CSV file
* `fan_sensor_locations.csv` — sensor location metadata as a CSV file
* `fan_test_run_summary.csv` — one-row-per-test summary metrics

## Dataset overview

* Number of fan blade designs: **8**
* Number of speed settings per design: **3**
* Number of total test runs: **24**
* Test duration: **20 minutes per run**
* Room size: **10 m x 8 m**
* Fan location: **center of room**
* Fan height: **3.0 m**
* Sensor height: **1.5 m**
* Number of spatial sensor locations: **35**
* Air velocity sampling interval: **5 seconds**
* Temperature sampling interval: **10 seconds**
* Rotation speed sampling interval: **1 second**
* Power sampling interval: **1 second**

Each sensor `.mat` file contains data for **all fan designs** and **all test runs**. The files are organized by sensor type, not by fan design.

## Fan blade design reference

The design IDs are:

| fan_id | design_label             |
| ------ | ------------------------ |
| `F01`  | `flat_short_lowPitch`    |
| `F02`  | `flat_short_highPitch`   |
| `F03`  | `flat_long_lowPitch`     |
| `F04`  | `flat_long_highPitch`    |
| `F05`  | `curved_short_lowPitch`  |
| `F06`  | `curved_short_highPitch` |
| `F07`  | `curved_long_lowPitch`   |
| `F08`  | `curved_long_highPitch`  |

## Top-level variables in the `.mat` files

Each `.mat` file contains one top-level variable.

| File                        | Top-level variable  |   Dimensions |
| --------------------------- | ------------------- | -----------: |
| `fan_design_metadata.mat`   | `fan_designs`       |       8 rows |
| `fan_test_runs.mat`         | `test_runs`         |      24 rows |
| `fan_sensor_locations.mat`  | `sensor_locations`  |      35 rows |
| `fan_air_velocity.mat`      | `air_velocity`      | 202,440 rows |
| `fan_temperature.mat`       | `temperature`       | 101,640 rows |
| `fan_rotation_speed.mat`    | `rotation_speed`    |  28,824 rows |
| `fan_power_consumption.mat` | `power_consumption` |  28,824 rows |

Each top-level variable is stored as a MATLAB structure with fields that act like table columns.

## Linking variables

Use these variables to connect information across files:

| Variable      | Meaning                                |
| ------------- | -------------------------------------- |
| `fan_id`      | Identifies the fan blade design        |
| `test_id`     | Identifies one test run                |
| `location_id` | Identifies one spatial sensor location |

For example, `fan_id` appears in the design metadata, test run metadata, and sensor data.

## `fan_designs`

`fan_designs` contains metadata for the 8 blade designs.

The dataset uses a 2 x 2 x 2 design space:

| Design parameter | Levels           |
| ---------------- | ---------------- |
| Blade shape      | `flat`, `curved` |
| Blade length     | `short`, `long`  |
| Pitch angle      | `low`, `high`    |

Fields in `fan_designs`:

| Field             | Description                 | Units / format     | Dimensions |
| ----------------- | --------------------------- | ------------------ | ---------: |
| `fan_id`          | Unique fan design ID        | text, e.g. `F01`   |      8 x 1 |
| `blade_shape`     | Blade shape category        | `flat` or `curved` |      8 x 1 |
| `blade_length`    | Blade length category       | `short` or `long`  |      8 x 1 |
| `blade_length_m`  | Blade length                | meters             |      8 x 1 |
| `pitch_angle`     | Pitch angle category        | `low` or `high`    |      8 x 1 |
| `pitch_angle_deg` | Blade pitch angle           | degrees            |      8 x 1 |
| `blade_count`     | Number of blades            | count              |      8 x 1 |
| `design_label`    | Human-readable design label | text               |      8 x 1 |

## `test_runs`

`test_runs` contains metadata for each controlled fan test.

Each test run represents one fan blade design tested at one speed setting.

```matlab
8 fan designs x 3 speed settings = 24 test runs
```

Fields in `test_runs`:

| Field                 | Description                             | Units / format             | Dimensions |
| --------------------- | --------------------------------------- | -------------------------- | ---------: |
| `test_id`             | Unique test run ID                      | text, e.g. `T001`          |     24 x 1 |
| `fan_id`              | Fan design used in the test             | text, e.g. `F01`           |     24 x 1 |
| `speed_setting`       | Fan speed setting                       | `low`, `medium`, or `high` |     24 x 1 |
| `target_rpm`          | Intended rotation speed                 | rpm                        |     24 x 1 |
| `start_time_sec`      | Test start time measured from midnight  | seconds                    |     24 x 1 |
| `end_time_sec`        | Test end time measured from midnight    | seconds                    |     24 x 1 |
| `start_time_24h`      | Human-readable start time               | `HH:MM:SS`                 |     24 x 1 |
| `end_time_24h`        | Human-readable end time                 | `HH:MM:SS`                 |     24 x 1 |
| `duration_sec`        | Test duration                           | seconds                    |     24 x 1 |
| `initial_room_temp_C` | Initial average room temperature        | °C                         |     24 x 1 |
| `hvac_supply_temp_C`  | Approximate HVAC supply air temperature | °C                         |     24 x 1 |

## `sensor_locations`

`sensor_locations` contains the spatial locations of the air velocity and temperature sensors.

Air velocity and temperature are measured at 35 locations arranged in a 7 x 5 grid across the room.

Fields in `sensor_locations`:

| Field                        | Description                         | Units / format   | Dimensions |
| ---------------------------- | ----------------------------------- | ---------------- | ---------: |
| `location_id`                | Unique location ID                  | text, e.g. `L01` |     35 x 1 |
| `x_m`                        | x-position in the room              | meters           |     35 x 1 |
| `y_m`                        | y-position in the room              | meters           |     35 x 1 |
| `z_m`                        | Sensor height                       | meters           |     35 x 1 |
| `distance_from_fan_center_m` | Horizontal distance from fan center | meters           |     35 x 1 |
| `location_type`              | Type of sensor location             | text             |     35 x 1 |

## `air_velocity`

`air_velocity` contains air velocity measurements for all fan designs, all speed settings, all sensor locations, and all air-velocity time points.

Top-level variable:

```matlab
air_velocity
```

Number of rows:

```matlab
202440
```

Fields in `air_velocity`:

| Field               | Description                          | Units / format       |  Dimensions |
| ------------------- | ------------------------------------ | -------------------- | ----------: |
| `test_id`           | Test run ID                          | text                 | 202,440 x 1 |
| `fan_id`            | Fan design ID                        | text                 | 202,440 x 1 |
| `location_id`       | Sensor location ID                   | text                 | 202,440 x 1 |
| `time_sec`          | Time since start of test             | seconds              | 202,440 x 1 |
| `time_min`          | Time since start of test             | minutes              | 202,440 x 1 |
| `time_of_day_hours` | Clock time using a 24-hour time base | hours after midnight | 202,440 x 1 |
| `air_speed_mps`     | Air speed magnitude                  | m/s                  | 202,440 x 1 |
| `vel_x_mps`         | x-direction air velocity component   | m/s                  | 202,440 x 1 |
| `vel_y_mps`         | y-direction air velocity component   | m/s                  | 202,440 x 1 |
| `vel_z_mps`         | z-direction air velocity component   | m/s                  | 202,440 x 1 |

## `temperature`

`temperature` contains air temperature measurements for all fan designs, all speed settings, all sensor locations, and all temperature time points.

Top-level variable:

```matlab
temperature
```

Number of rows:

```matlab
101640
```

Fields in `temperature`:

| Field               | Description                          | Units / format       |  Dimensions |
| ------------------- | ------------------------------------ | -------------------- | ----------: |
| `test_id`           | Test run ID                          | text                 | 101,640 x 1 |
| `fan_id`            | Fan design ID                        | text                 | 101,640 x 1 |
| `location_id`       | Sensor location ID                   | text                 | 101,640 x 1 |
| `time_sec`          | Time since start of test             | seconds              | 101,640 x 1 |
| `time_min`          | Time since start of test             | minutes              | 101,640 x 1 |
| `time_of_day_hours` | Clock time using a 24-hour time base | hours after midnight | 101,640 x 1 |
| `temperature_C`     | Air temperature                      | °C                   | 101,640 x 1 |

## `rotation_speed`

`rotation_speed` contains measured fan rotation speed over time.

Top-level variable:

```matlab
rotation_speed
```

Number of rows:

```matlab
28824
```

Fields in `rotation_speed`:

| Field               | Description                          | Units / format         | Dimensions |
| ------------------- | ------------------------------------ | ---------------------- | ---------: |
| `test_id`           | Test run ID                          | text                   | 28,824 x 1 |
| `fan_id`            | Fan design ID                        | text                   | 28,824 x 1 |
| `time_sec`          | Time since start of test             | seconds                | 28,824 x 1 |
| `time_min`          | Time since start of test             | minutes                | 28,824 x 1 |
| `time_of_day_hours` | Clock time using a 24-hour time base | hours after midnight   | 28,824 x 1 |
| `rpm`               | Measured fan rotation speed          | revolutions per minute | 28,824 x 1 |
| `target_rpm`        | Intended rotation speed              | revolutions per minute | 28,824 x 1 |

## `power_consumption`

`power_consumption` contains electrical power measurements over time.

Top-level variable:

```matlab
power_consumption
```

Number of rows:

```matlab
28824
```

Fields in `power_consumption`:

| Field               | Description                          | Units / format       | Dimensions |
| ------------------- | ------------------------------------ | -------------------- | ---------: |
| `test_id`           | Test run ID                          | text                 | 28,824 x 1 |
| `fan_id`            | Fan design ID                        | text                 | 28,824 x 1 |
| `time_sec`          | Time since start of test             | seconds              | 28,824 x 1 |
| `time_min`          | Time since start of test             | minutes              | 28,824 x 1 |
| `time_of_day_hours` | Clock time using a 24-hour time base | hours after midnight | 28,824 x 1 |
| `power_W`           | Electrical power consumption         | watts                | 28,824 x 1 |
| `voltage_V`         | Supply voltage                       | volts                | 28,824 x 1 |
| `current_A`         | Current draw                         | amps                 | 28,824 x 1 |

## Speed setting labels

The `speed_setting` field has one of the following labels:

```matlab
low
medium
high
```

## Time base

Each sensor file includes three time variables:

| Field               | Description                          | Units / format       |
| ------------------- | ------------------------------------ | -------------------- |
| `time_sec`          | Time since the start of the test run | seconds              |
| `time_min`          | Time since the start of the test run | minutes              |
| `time_of_day_hours` | Clock time on a 24-hour scale        | hours after midnight |

For example, a value of `13.5` in `time_of_day_hours` means 13:30, or 1:30 PM.

Use `time_sec` or `time_min` when comparing changes within a test run. Use `time_of_day_hours` when plotting when each test occurred during the day.

## Missing values

The generated dataset may include small amounts of synthetic noise. The current dataset is designed to be mostly complete, but students should still check for missing values before calculating summary metrics.

## Domain assumptions

* The room is modeled as a 10 m x 8 m gym space.
* The fan is located at the center of the room.
* The fan height is 3.0 m.
* Air velocity and temperature are measured at 1.5 m above the floor, approximately breathing-zone height.
* All sensor locations in this dataset have `location_type = breathing_zone_grid`. This means the sensors are part of a horizontal room-wide grid at breathing-zone height.
* Ceiling fans circulate and mix air; they do not directly cool air like an air conditioner.
* Temperature changes in this dataset represent air mixing and interaction with the room's existing HVAC supply air.
* Higher airflow is not always better. Very high local airflow may be less comfortable or less uniform.
* Longer blades generally move air over a wider area but may use more power.
* Higher pitch angles generally produce stronger airflow but may use more power.
* Curved blades are modeled as somewhat more efficient and more uniform than flat blades.
* Power consumption depends on fan speed, blade length, pitch angle, and blade shape.
* The dataset includes small random variation to mimic realistic sensor noise.
