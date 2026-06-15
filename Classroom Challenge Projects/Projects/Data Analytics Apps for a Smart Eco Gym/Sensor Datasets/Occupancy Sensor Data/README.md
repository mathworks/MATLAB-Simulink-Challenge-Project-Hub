# Gym Zone Metadata and Occupancy Data

This dataset contains shared zone metadata and synthetic occupancy data for the Smart Eco-Friendly Gym. These files describe the gym areas used across multiple sensor datasets.

The data are intended to support cross-dataset analysis. For example, students may use zone occupancy to help interpret air quality, energy usage, ventilation behavior, space utilization, or structural response.

All data are synthetic. They are designed for introductory engineering analysis and MATLAB App Designer dashboards. They should not be interpreted as measurements from a real building.

## Files

### MATLAB data files

* `zone_metadata.mat` — metadata for each gym zone
* `zone_occupancy.mat` — estimated occupancy by zone over one day

### CSV metadata files

* `zone_metadata.csv` — zone metadata as a CSV file
* `zone_occupancy.csv` — estimated occupancy by zone as a CSV file

## Dataset overview

* Time span: **one day**
* Sampling interval for occupancy: **1 minute**
* Number of gym zones: **5**
* Number of zone metadata rows: **5**
* Number of zone occupancy rows: **7,200**
* Main gym room size: **10 m x 8 m**
* Main gym ceiling height: **3.0 m**

The files are organized around shared gym zones, not a single engineering discipline or design challenge.

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

| File                 | Top-level variable | Dimensions |
| -------------------- | ------------------ | ---------: |
| `zone_metadata.mat`  | `zones`            |     5 rows |
| `zone_occupancy.mat` | `zone_occupancy`   | 7,200 rows |

Each top-level variable is stored as a MATLAB structure with fields that act like table columns.

## Linking variables

Use these variables to connect zone information across files:

| Variable    | Meaning                      |
| ----------- | ---------------------------- |
| `zone_id`   | Unique gym zone ID           |
| `zone_name` | Human-readable gym zone name |
| `time_sec`  | Time since midnight          |
| `time_24h`  | Human-readable clock time    |

Other Smart Gym datasets may also include `zone_id` and `zone_name` so that students can connect occupancy patterns to air quality, energy use, ventilation, or other sensor measurements.

## `zones`

`zones` contains metadata for each gym zone.

Top-level variable:

```matlab
zones
```

Number of rows:

```matlab
5
```

Fields in `zones`:

| Field                    | Description                                    | Units / format               | Dimensions |
| ------------------------ | ---------------------------------------------- | ---------------------------- | ---------: |
| `zone_id`                | Unique gym zone ID                             | text, e.g. `Z01`             |      5 x 1 |
| `zone_name`              | Human-readable gym zone name                   | text label                   |      5 x 1 |
| `floor_area_m2`          | Approximate floor area of the zone             | m²                           |      5 x 1 |
| `ceiling_height_m`       | Approximate ceiling height                     | meters                       |      5 x 1 |
| `room_volume_m3`         | Approximate air volume of the zone             | m³                           |      5 x 1 |
| `typical_activity_level` | Typical activity level in the zone             | `low`, `moderate`, or `high` |      5 x 1 |
| `has_direct_vent_supply` | Whether the zone has direct ventilation supply | true/false                   |      5 x 1 |
| `notes`                  | Short zone description                         | text                         |      5 x 1 |

## `zone_occupancy`

`zone_occupancy` contains estimated occupancy for each gym zone over one day.

Top-level variable:

```matlab
zone_occupancy
```

Number of rows:

```matlab
7200
```

Each row represents one 1-minute occupancy estimate for one gym zone.

Because there are 5 zones and 1,440 minutes in one day:

```matlab
5 zones x 1440 time points = 7200 rows
```

Fields in `zone_occupancy`:

| Field             | Description                                         | Units / format               | Dimensions |
| ----------------- | --------------------------------------------------- | ---------------------------- | ---------: |
| `zone_id`         | Gym zone ID                                         | text, e.g. `Z01`             |  7,200 x 1 |
| `zone_name`       | Gym zone name                                       | text label                   |  7,200 x 1 |
| `time_sec`        | Time measured from midnight                         | seconds                      |  7,200 x 1 |
| `time_24h`        | Human-readable clock time                           | `HH:MM:SS`                   |  7,200 x 1 |
| `occupancy_count` | Estimated number of people in the zone              | people                       |  7,200 x 1 |
| `activity_level`  | Approximate activity level in the zone at that time | `low`, `moderate`, or `high` |  7,200 x 1 |

## Activity level labels

The `activity_level` field has one of the following labels:

```matlab
low
moderate
high
```

These labels describe the estimated activity level in a zone at a specific time. They are simplified categories, not direct measurements of individual effort.

## Time base

The occupancy file uses time measured from midnight.

| Field      | Description               | Units / format |
| ---------- | ------------------------- | -------------- |
| `time_sec` | Time since midnight       | seconds        |
| `time_24h` | Human-readable clock time | `HH:MM:SS`     |

Use `time_sec` for calculations. Use `time_24h` for labels, tables, or dashboard displays.

## Domain assumptions

* The data represent one synthetic day in a smart gym.
* The gym is divided into five zones: cardio zone, free weight zone, yoga studio, locker room, and front desk/lobby.
* The main gym room is modeled as a 10 m x 8 m space.
* The main gym ceiling height is modeled as 3.0 m.
* Zone volume is estimated from floor area and ceiling height.
* Occupancy values are synthetic estimates, not exact counts from real people.
* Occupancy is reported once per minute for each zone.
* Occupancy is represented as a whole-number estimate of how many people are in a zone.
* `activity_level` is a simplified zone-level label, not an individual-level measurement.
* These data are intended to support engineering estimates, comparisons, and dashboard design.
* There is no single required definition of whether a zone is crowded or underused.
* Students may define their own occupancy-based metrics, such as peak occupancy, average occupancy, percent of time above a threshold, or occupancy density.
