# Data

## Time series data

- Demand
- Wind availability
- Solar PV availability

| Field name | Type (Format) | Description | Unit  | Source |
| ---        | ---           | ---         | ---   | ---    |
| hour | string | Hour of the timestep | h | None |
| demand | number | Total load in Denmark as published on ENTSO-E Transparency Platform  | MW  | Source |
| wind | number | Onshore wind availability | MW | ---       |
| pv | number | Solar pv availability | MW | ---       |


## Scalar data 

Scalar data comprises four parameters. 

- `dispatchable` : 1 if the technology is dispatchable, 0 otherwise 
- `vc`: Variable costs in €/MWh
- `storage_eff`: Storage efficiency for charging and discharging of storage units
- `installed_cap`: Installed capacity in MW

The scalar data has the following columns:

| Field name | Type (Format) | Description |
| --- | --- | --- |
| technology | string | Name of technology |
| parameter | string  | Data parameter | 
| value | number | Value of the parameter |
| unit | string | Unit of the parameter |
| source | string | Source of the parameter |


For this model, the following scalar data is used:

| Technology    | Parameter | Value | Unit  | Source    |
| ---           | ---       | ---   | ---   | ---       |
| Wind | dispatchable | 0 | None | None |
| Wind | vc |  |  |  |
| Wind | installed_cap |  |  |  |
| Solar | dispatchable | 0 |  |  |