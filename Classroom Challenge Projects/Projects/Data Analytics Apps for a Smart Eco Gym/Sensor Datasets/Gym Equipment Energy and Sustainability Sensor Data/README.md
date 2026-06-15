# Gym Equipment Energy and Sustainability Sensor Data

This dataset contains synthetic sensor data representing one day of electrical energy monitoring from cardio equipment, energy-generating gym equipment, and whole-gym facility systems.

The goal is to use MATLAB to analyze energy consumption, idle energy waste, renewable energy generation, and sustainability metrics for a non-expert gym management audience.

All data are synthetic. They are designed for introductory engineering analysis and MATLAB App Designer dashboards. They should not be interpreted as measurements from real gym equipment or a real building.

## Files

### MATLAB data files

* `equipment_metadata.mat` — equipment and facility-system metadata
* `equipment_usage_sessions.mat` — active usage sessions for cardio machines
* `equipment_power_consumption.mat` — voltage, current, and power consumption over time
* `renewable_generation.mat` — generated electrical power from energy-generating treadmills and bikes
* `facility_energy_meters.mat` — system-level facility energy meter data
* `sustainability_reference.mat` — reference assumptions for carbon, cost, idle waste, and renewable contribution calculations

### CSV metadata and summary files

* `equipment_metadata.csv` — equipment and facility-system metadata as a CSV file
* `equipment_usage_sessions.csv` — usage session metadata as a CSV file
* `facility_system_metadata.csv` — system-level facility meter descriptions
* `sustainability_reference.csv` — sustainability reference assumptions

## Dataset overview

* Time span: **one day**
* Main sampling interval: **30 seconds**
* Number of monitored equipment items and systems: **25**
* Number of active equipment usage sessions: **132**
* Number of energy-generating treadmills: **3**
* Number of energy-generating bikes: **3**
* Number of facility energy meter systems: **5**
* Gym room size: **10 m x 8 m**

The files are organized by data type / sensor type, not by engineering discipline or dashboard question.

## Top-level variables in the `.mat` files

Each `.mat` file contains one top-level variable.

| File                              | Top-level variable         |  Dimensions |
| --------------------------------- | -------------------------- | ----------: |
| `equipment_metadata.mat`          | `equipment`                |     25 rows |
| `equipment_usage_sessions.mat`    | `usage_sessions`           |    132 rows |
| `equipment_power_consumption.mat` | `power_consumption`        | 72,000 rows |
| `renewable_generation.mat`        | `renewable_generation`     | 17,280 rows |
| `facility_energy_meters.mat`      | `facility_energy`          | 14,400 rows |
| `sustainability_reference.mat`    | `sustainability_reference` |       1 row |

Each top-level variable is stored as a MATLAB structure with fields that act like table columns.

## Linking variables

Use these variables to connect information across files:

| Variable                     | Meaning                                                       |
| ---------------------------- | ------------------------------------------------------------- |
| `equipment_id`               | Identifies one machine or monitored facility system           |
| `usage_id`                   | Identifies one active usage session on a piece of equipment   |
| `person_id`                  | Anonymous gym member ID                                       |
| `linked_wearable_session_id` | Links selected energy sessions to the wearable sensor dataset |
| `system_id`                  | Identifies one facility-level energy meter                    |

## `equipment`

`equipment` contains metadata for individual cardio machines and monitored facility systems.

Fields in `equipment`:

| Field                            | Description                                  | Units / format             | Dimensions |
| -------------------------------- | -------------------------------------------- | -------------------------- | ---------: |
| `equipment_id`                   | Unique equipment or system ID                | text, e.g. `EGT001`        |     25 x 1 |
| `equipment_name`                 | Human-readable equipment name                | text                       |     25 x 1 |
| `equipment_type`                 | Type of equipment or system                  | text label                 |     25 x 1 |
| `system_category`                | Broader energy category                      | text label                 |     25 x 1 |
| `is_energy_generating`           | Whether the machine can generate electricity | true/false                 |     25 x 1 |
| `rated_power_W`                  | Approximate rated power                      | watts                      |     25 x 1 |
| `standby_power_W`                | Typical idle or standby power                | watts                      |     25 x 1 |
| `location_zone`                  | Area of the gym                              | text label                 |     25 x 1 |
| `manufacturer_efficiency_rating` | Simple reference efficiency rating           | `low`, `medium`, or `high` |     25 x 1 |

## Equipment type labels

The `equipment_type` field includes:

```matlab
regular_treadmill
energy_generating_treadmill
stationary_bike
energy_generating_bike
elliptical
rowing_machine
hvac_system
lighting_system
ceiling_fan_system
plug_load_system
```

## System category labels

The `system_category` field includes:

```matlab
cardio_equipment
hvac
lighting
air_circulation
plug_load
```

## `usage_sessions`

`usage_sessions` contains active usage sessions for cardio equipment.

Each row represents one active workout session on one machine.

Fields in `usage_sessions`:

| Field                        | Description                                | Units / format               | Dimensions |
| ---------------------------- | ------------------------------------------ | ---------------------------- | ---------: |
| `usage_id`                   | Unique usage session ID                    | text, e.g. `U001`            |    132 x 1 |
| `equipment_id`               | Equipment used in the session              | text                         |    132 x 1 |
| `person_id`                  | Anonymous gym member ID                    | text                         |    132 x 1 |
| `linked_wearable_session_id` | Matching wearable session ID, if available | text or blank                |    132 x 1 |
| `activity_type`              | Activity performed                         | text label                   |    132 x 1 |
| `activity_intensity`         | Approximate intensity level                | `low`, `moderate`, or `high` |    132 x 1 |
| `session_status`             | Session status                             | `active`                     |    132 x 1 |
| `start_time_sec`             | Start time measured from midnight          | seconds                      |    132 x 1 |
| `end_time_sec`               | End time measured from midnight            | seconds                      |    132 x 1 |
| `start_time_24h`             | Human-readable start time                  | `HH:MM:SS`                   |    132 x 1 |
| `end_time_24h`               | Human-readable end time                    | `HH:MM:SS`                   |    132 x 1 |
| `duration_min`               | Session duration                           | minutes                      |    132 x 1 |

## Activity labels

The `activity_type` field includes:

```matlab
walking
treadmill_running
cycling
elliptical
rowing
```

## Cross-dataset links to wearable data

Some energy-generating treadmill and bike sessions are linked to sessions in the wearable sensor dataset using `linked_wearable_session_id`.

These linked sessions use matching participant IDs, activity types, start times, and end times. This allows optional analysis across the wearable and energy datasets.

Natural linked activity types are:

```matlab
walking
treadmill_running
cycling
```

A blank value in `linked_wearable_session_id` means that the usage session is not linked to the wearable dataset.

## `power_consumption`

`power_consumption` contains voltage, current, and electrical power consumption data.

Top-level variable:

```matlab
power_consumption
```

Number of rows:

```matlab
72000
```

Fields in `power_consumption`:

| Field             | Description                            | Units / format             | Dimensions |
| ----------------- | -------------------------------------- | -------------------------- | ---------: |
| `equipment_id`    | Equipment or system ID                 | text                       | 72,000 x 1 |
| `usage_id`        | Active usage session ID, if applicable | text or blank              | 72,000 x 1 |
| `time_sec`        | Time measured from midnight            | seconds                    | 72,000 x 1 |
| `time_24h`        | Human-readable clock time              | `HH:MM:SS`                 | 72,000 x 1 |
| `voltage_V`       | Measured voltage                       | volts                      | 72,000 x 1 |
| `current_A`       | Measured current                       | amps                       | 72,000 x 1 |
| `power_W`         | Electrical power consumed              | watts                      | 72,000 x 1 |
| `operating_state` | Equipment state                        | `off`, `idle`, or `active` | 72,000 x 1 |

## `renewable_generation`

`renewable_generation` contains electricity generation data for energy-generating treadmills and bikes.

Top-level variable:

```matlab
renewable_generation
```

Number of rows:

```matlab
17280
```

Fields in `renewable_generation`:

| Field                   | Description                                | Units / format | Dimensions |
| ----------------------- | ------------------------------------------ | -------------- | ---------: |
| `equipment_id`          | Energy-generating equipment ID             | text           | 17,280 x 1 |
| `usage_id`              | Active usage session ID, if applicable     | text or blank  | 17,280 x 1 |
| `time_sec`              | Time measured from midnight                | seconds        | 17,280 x 1 |
| `time_24h`              | Human-readable clock time                  | `HH:MM:SS`     | 17,280 x 1 |
| `generator_voltage_V`   | Generator output voltage                   | volts          | 17,280 x 1 |
| `generator_current_A`   | Generator output current                   | amps           | 17,280 x 1 |
| `generated_power_W`     | Raw generated electrical power             | watts          | 17,280 x 1 |
| `usable_power_W`        | Usable power after conversion losses       | watts          | 17,280 x 1 |
| `conversion_efficiency` | Fraction of generated power that is usable | unitless, 0–1  | 17,280 x 1 |

This file is stored in **long format**. Each row represents one 30-second sensor measurement from one energy-generating machine.

Each 30-second time point appears once for each energy-generating machine, identified by `equipment_id`.

The `equipment_id` field is filled for every row because each row is a sensor reading from a specific machine. 
The `usage_id` field is blank when the machine is not actively being used. 
During inactive periods, `generated_power_W` and `usable_power_W` are zero.

## `facility_energy`

`facility_energy` contains system-level facility energy meter data.

Top-level variable:

```matlab
facility_energy
```

Number of rows:

```matlab
14400
```

Fields in `facility_energy`:

| Field             | Description                 | Units / format | Dimensions |
| ----------------- | --------------------------- | -------------- | ---------: |
| `system_id`       | Facility meter system ID    | text           | 14,400 x 1 |
| `system_name`     | Human-readable system name  | text           | 14,400 x 1 |
| `system_category` | Facility system category    | text label     | 14,400 x 1 |
| `time_sec`        | Time measured from midnight | seconds        | 14,400 x 1 |
| `time_24h`        | Human-readable clock time   | `HH:MM:SS`     | 14,400 x 1 |
| `power_W`         | Electrical power consumed   | watts          | 14,400 x 1 |

## `sustainability_reference`

`sustainability_reference` is not sensor data. It contains reference assumptions that can be used to convert energy values into sustainability metrics.

Top-level variable:

```matlab
sustainability_reference
```

Number of rows:

```matlab
1
```

Fields in `sustainability_reference`:

| Field                                 | Value | Description                                                    | Units / format    |
| ------------------------------------- | ----: | -------------------------------------------------------------- | ----------------- |
| `grid_carbon_intensity_kgCO2_per_kWh` |  0.35 | Estimated CO2 emissions from grid electricity use              | kg CO2/kWh        |
| `renewable_credit_kgCO2_per_kWh`      |  0.35 | Estimated avoided CO2 from usable member-generated electricity | kg CO2/kWh        |
| `electricity_cost_USD_per_kWh`        |  0.22 | Estimated electricity cost                                     | USD/kWh           |
| `target_idle_power_fraction`          |  0.15 | Example benchmark for judging idle energy waste                | unitless fraction |
| `target_renewable_fraction`           |  0.05 | Example benchmark for judging renewable contribution           | unitless fraction |
| `notes`                               |  text | Short description of assumptions                               | text              |

Students can use these values to estimate carbon footprint, avoided emissions, electricity cost, idle energy waste, and renewable energy contribution.

The target values are optional benchmarks. For example, students may decide to flag a machine if more than 15% of its daily energy use occurs while idle, or evaluate whether member-generated electricity offsets at least 5% of total gym energy use.

## Time base

Each time-series file uses time measured from midnight.

| Field      | Description               | Units / format |
| ---------- | ------------------------- | -------------- |
| `time_sec` | Time since midnight       | seconds        |
| `time_24h` | Human-readable clock time | `HH:MM:SS`     |

Use `time_sec` for calculations. Use `time_24h` for labels, tables, or dashboard displays.

## Missing values

The generated dataset is designed to be mostly complete. Students should still check for missing values before calculating summary metrics.

## Domain assumptions

* The gym room is modeled as a 10 m x 8 m space, consistent with the ceiling fan airflow dataset.
* Ceiling fans are represented as one aggregated air-circulation system: `SYS_CEILING_FANS`.
* The ceiling fan system represents the combined electrical power used by all ceiling fans in the gym.
* Regular cardio machines consume electrical power during active use and may also consume standby power while idle.
* Energy-generating treadmills and bikes can produce electricity during active use.
* `generated_power_W` is the raw generated electrical power from member motion.
* `usable_power_W` is lower than `generated_power_W` because of conversion and storage losses.
* Renewable generation offsets only part of the gym's total electricity use.
* Carbon footprint estimates depend on the provided grid carbon intensity factor.
* Idle energy is energy used when equipment is on but not actively being used.
* A machine that uses more total energy is not automatically less efficient if it is used more often.
* A machine that generates electricity is not automatically net zero.
* Energy efficiency can be defined in multiple reasonable ways, including low energy use, low idle waste, high usage, high renewable generation, or low net carbon footprint.
* The dataset includes small random variation to mimic realistic sensor noise.
* Energy can be estimated by integrating power over time.

