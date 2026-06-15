# Indoor Air Quality and Ventilation Sensor Data

This dataset contains synthetic indoor air quality sensor data representing one day of environmental monitoring across several areas of the gym.

The goal is to use MATLAB to analyze air quality, ventilation behavior, temperature, humidity, and chemical/odor buildup indicators for a non-expert gym management or gym member audience.

All data are synthetic. They are designed for introductory engineering analysis and MATLAB App Designer dashboards. They should not be interpreted as measurements from a real building, as medical guidance, or as regulatory air quality guidance.

## Files

### MATLAB data files

* `air_quality_sensor_locations.mat` — air quality sensor locations
* `co2_concentration.mat` — carbon dioxide concentration data
* `temperature_humidity.mat` — temperature and relative humidity data
* `voc_concentration.mat` — total volatile organic compound data
* `ventilation_system_status.mat` — ventilation mode and airflow by gym zone
* `air_quality_reference.mat` — simplified reference assumptions for student calculations

### CSV metadata and summary files

* `air_quality_sensor_locations.csv` — air quality sensor location metadata as a CSV file
* `air_quality_reference.csv` — simplified air quality reference assumptions as a CSV file

## Related shared files

Zone metadata and zone occupancy are provided separately in the shared zone/occupancy data folder.

Those files may be useful for cross-dataset analysis, but this air quality dataset can also be analyzed on its own using the `zone_id` and `zone_name` fields included in the air quality files.

Related shared files:

* `zone_metadata.mat` / `zone_metadata.csv`
* `zone_occupancy.mat`

## Dataset overview

* Time span: **one day**
* Sampling interval: **1 minute**
* Number of gym zones: **5**
* Number of air quality sensor locations: **15**
* Sensors per zone: **3**
* CO2 rows: **21,600**
* Temperature/humidity rows: **21,600**
* TVOC rows: **21,600**
* Ventilation status rows: **7,200**
* Air quality reference rows: **1**
* Sensor height: **1.5 m**
* Main gym room size: **10 m x 8 m**
* Main gym ceiling height: **3.0 m**

The files are organized by sensor/data type, not by engineering discipline or dashboard question.

## Gym zones

The dataset uses five gym zones:

| zone_id | zone_name          |
| ------- | ------------------ |
| `Z01`   | `cardio_zone`      |
| `Z02`   | `free_weight_zone` |
| `Z03`   | `yoga_studio`      |
| `Z04`   | `locker_room`      |
| `Z05`   | `front_desk_lobby` |

## Top-level variables in the `.mat` files

Each `.mat` file contains one top-level variable.

| File                               | Top-level variable      |  Dimensions |
| ---------------------------------- | ----------------------- | ----------: |
| `air_quality_sensor_locations.mat` | `sensor_locations`      |     15 rows |
| `co2_concentration.mat`            | `co2_concentration`     | 21,600 rows |
| `temperature_humidity.mat`         | `temperature_humidity`  | 21,600 rows |
| `voc_concentration.mat`            | `voc_concentration`     | 21,600 rows |
| `ventilation_system_status.mat`    | `ventilation_status`    |  7,200 rows |
| `air_quality_reference.mat`        | `air_quality_reference` |       1 row |

Each top-level variable is stored as a MATLAB structure with fields that act like table columns.

## Linking variables

Use these variables to connect information across files:

| Variable      | Meaning                                    |
| ------------- | ------------------------------------------ |
| `location_id` | Identifies one air quality sensor location |
| `zone_id`     | Identifies one gym zone                    |
| `zone_name`   | Human-readable name of the gym zone        |
| `time_sec`    | Time since midnight                        |
| `time_24h`    | Human-readable clock time                  |

The CO2, temperature/humidity, and TVOC files are measured at the sensor-location level. The ventilation status file is measured at the zone level.

## `sensor_locations`

`sensor_locations` contains metadata for the 15 air quality sensor locations.

There are 3 air quality sensors in each gym zone.

Fields in `sensor_locations`:

| Field            | Description                            | Units / format      | Dimensions |
| ---------------- | -------------------------------------- | ------------------- | ---------: |
| `location_id`    | Unique air quality sensor location ID  | text, e.g. `AQ_L01` |     15 x 1 |
| `zone_id`        | Gym zone ID                            | text, e.g. `Z01`    |     15 x 1 |
| `zone_name`      | Gym zone name                          | text label          |     15 x 1 |
| `x_m`            | x-position within the zone             | meters              |     15 x 1 |
| `y_m`            | y-position within the zone             | meters              |     15 x 1 |
| `z_m`            | sensor height                          | meters              |     15 x 1 |
| `location_label` | Simple description of sensor placement | text label          |     15 x 1 |
| `location_type`  | Type of air quality sensor location    | text label          |     15 x 1 |

The `location_type` value is:

```matlab
breathing_zone_air_quality
```

This means the sensors are placed at approximately breathing-zone height.

## `co2_concentration`

`co2_concentration` contains carbon dioxide concentration data.

Top-level variable:

```matlab
co2_concentration
```

Number of rows:

```matlab
21600
```

Each row represents one CO2 measurement from one sensor location at one time point.

Fields in `co2_concentration`:

| Field         | Description                    | Units / format         | Dimensions |
| ------------- | ------------------------------ | ---------------------- | ---------: |
| `location_id` | Air quality sensor location ID | text                   | 21,600 x 1 |
| `zone_id`     | Gym zone ID                    | text                   | 21,600 x 1 |
| `zone_name`   | Gym zone name                  | text label             | 21,600 x 1 |
| `time_sec`    | Time measured from midnight    | seconds                | 21,600 x 1 |
| `time_24h`    | Human-readable clock time      | `HH:MM:SS`             | 21,600 x 1 |
| `co2_ppm`     | Carbon dioxide concentration   | parts per million, ppm | 21,600 x 1 |

## `temperature_humidity`

`temperature_humidity` contains temperature and relative humidity data.

Top-level variable:

```matlab
temperature_humidity
```

Number of rows:

```matlab
21600
```

Each row represents one temperature and humidity measurement from one sensor location at one time point.

Fields in `temperature_humidity`:

| Field                   | Description                    | Units / format      | Dimensions |
| ----------------------- | ------------------------------ | ------------------- | ---------: |
| `location_id`           | Air quality sensor location ID | text                | 21,600 x 1 |
| `zone_id`               | Gym zone ID                    | text                | 21,600 x 1 |
| `zone_name`             | Gym zone name                  | text label          | 21,600 x 1 |
| `time_sec`              | Time measured from midnight    | seconds             | 21,600 x 1 |
| `time_24h`              | Human-readable clock time      | `HH:MM:SS`          | 21,600 x 1 |
| `temperature_C`         | Air temperature                | degrees Celsius, °C | 21,600 x 1 |
| `relative_humidity_pct` | Relative humidity              | percent, %          | 21,600 x 1 |

## `voc_concentration`

`voc_concentration` contains total volatile organic compound data.

Top-level variable:

```matlab
voc_concentration
```

Number of rows:

```matlab
21600
```

Each row represents one TVOC measurement from one sensor location at one time point.

Fields in `voc_concentration`:

| Field         | Description                      | Units / format         | Dimensions |
| ------------- | -------------------------------- | ---------------------- | ---------: |
| `location_id` | Air quality sensor location ID   | text                   | 21,600 x 1 |
| `zone_id`     | Gym zone ID                      | text                   | 21,600 x 1 |
| `zone_name`   | Gym zone name                    | text label             | 21,600 x 1 |
| `time_sec`    | Time measured from midnight      | seconds                | 21,600 x 1 |
| `time_24h`    | Human-readable clock time        | `HH:MM:SS`             | 21,600 x 1 |
| `tvoc_ppb`    | Total volatile organic compounds | parts per billion, ppb | 21,600 x 1 |

## `ventilation_status`

`ventilation_status` contains zone-level ventilation information.

Top-level variable:

```matlab
ventilation_status
```

Number of rows:

```matlab
7200
```

Each row represents one ventilation status measurement for one gym zone at one time point.

Fields in `ventilation_status`:

| Field                            | Description                          | Units / format              | Dimensions |
| -------------------------------- | ------------------------------------ | --------------------------- | ---------: |
| `zone_id`                        | Gym zone ID                          | text                        |  7,200 x 1 |
| `zone_name`                      | Gym zone name                        | text label                  |  7,200 x 1 |
| `time_sec`                       | Time measured from midnight          | seconds                     |  7,200 x 1 |
| `time_24h`                       | Human-readable clock time            | `HH:MM:SS`                  |  7,200 x 1 |
| `ventilation_mode`               | Ventilation operating mode           | `low`, `normal`, or `boost` |  7,200 x 1 |
| `supply_airflow_m3_s`            | Supply airflow into the zone         | m³/s                        |  7,200 x 1 |
| `outdoor_air_fraction`           | Fraction of supply air from outdoors | unitless, 0–1               |  7,200 x 1 |
| `estimated_air_changes_per_hour` | Estimated air changes per hour       | 1/hr                        |  7,200 x 1 |

## Ventilation mode labels

The `ventilation_mode` field has one of the following labels:

```matlab
low
normal
boost
```

## `air_quality_reference`

`air_quality_reference` is not sensor data. It contains simplified reference assumptions that students may use to calculate air quality scores or comfort metrics.

Top-level variable:

```matlab
air_quality_reference
```

Number of rows:

```matlab
1
```

Fields in `air_quality_reference`:

| Field                                             | Value | Description                                   | Units / format |
| ------------------------------------------------- | ----: | --------------------------------------------- | -------------- |
| `co2_good_ppm`                                    |   800 | Simplified reference for good CO2 conditions  | ppm            |
| `co2_poor_ppm`                                    |  1200 | Simplified reference for poor CO2 conditions  | ppm            |
| `humidity_low_pct`                                |    30 | Lower reference for comfortable humidity      | %              |
| `humidity_high_pct`                               |    60 | Upper reference for comfortable humidity      | %              |
| `tvoc_good_ppb`                                   |   220 | Simplified reference for good TVOC conditions | ppb            |
| `tvoc_poor_ppb`                                   |   660 | Simplified reference for poor TVOC conditions | ppb            |
| `temperature_low_C`                               |    20 | Lower reference for comfortable temperature   | °C             |
| `temperature_high_C`                              |    24 | Upper reference for comfortable temperature   | °C             |
| `recommended_max_occupancy_density_people_per_m2` |  0.15 | Simplified crowding reference                 | people/m²      |
| `notes`                                           |  text | Short description of assumptions              | text           |

These reference values are simplified assumptions for student calculations. They are not regulatory limits or medical guidance.

## Time base

Each time-series file uses time measured from midnight.

| Field      | Description               | Units / format |
| ---------- | ------------------------- | -------------- |
| `time_sec` | Time since midnight       | seconds        |
| `time_24h` | Human-readable clock time | `HH:MM:SS`     |

Use `time_sec` for calculations. Use `time_24h` for labels, tables, or dashboard displays.

## Missing values

The generated dataset includes a small number of synthetic missing values. These represent brief sensor dropouts.

Students should check for missing values before calculating summary metrics.

## Domain assumptions

* The data represent one synthetic day of indoor air quality monitoring in a smart gym.
* The main gym room is modeled as a 10 m x 8 m space.
* The main gym ceiling height is modeled as 3.0 m.
* Air quality sensors are placed at approximately 1.5 m above the floor.
    * A sensor height of 1.5 m is used to approximate breathing-zone conditions for people standing or exercising.
* The gym is divided into five zones: cardio zone, free weight zone, yoga studio, locker room, and front desk/lobby.
* Each zone has three air quality sensor locations.
* CO2 is measured in parts per million, or ppm.
  * Higher CO2 values generally indicate more exhaled air buildup or less effective ventilation.
* Relative humidity is measured as percent relative humidity.
* Higher humidity may indicate sweat/moisture buildup, especially in active areas or locker rooms.
* TVOC stands for total volatile organic compounds.
  * TVOC is measured in parts per billion, or ppb.
  * TVOC is used as a simplified proxy for odors, cleaning products, and other airborne chemical compounds.
  * The dataset uses total VOC concentration rather than individual chemical species.
* Humidity and TVOC together may be used as a simplified sweat/odor buildup proxy.
* Ventilation mode describes how strongly the ventilation system is operating in each zone.
  * `low` ventilation represents reduced airflow, such as overnight or low-occupancy operation.
  * `normal` ventilation represents standard operating airflow.
  * `boost` ventilation represents increased airflow during higher occupancy or air quality control periods.
* `supply_airflow_m3_s` is the estimated supply airflow delivered to a zone.
* `outdoor_air_fraction` is the estimated fraction of supply air that comes from outdoors.
* `estimated_air_changes_per_hour` is an approximate ventilation metric, not a direct measurement of every air movement in the room.
* Ventilation effectiveness can be defined in multiple reasonable ways (a possible ventilation metric is CO2 decay rate after occupancy decreases or the percent of time CO2 remains below a selected threshold).
* There is no single required definition of good air quality.
* A zone can have acceptable temperature but poor CO2 or TVOC conditions.
* A zone can have high occupancy without poor air quality if ventilation is effective.
* A zone can have low occupancy but poor TVOC conditions after cleaning or odor buildup.
* The provided air quality reference values are simplified assumptions for student calculations.
* The reference values are not regulatory limits, medical limits, or safety guarantees.


