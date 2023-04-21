# Data

## Time series data

The time series data is based on 2015 values and includes three time series, one each for:

- Demand
- Wind availability
- Solar PV availability

| Field name | Type (Format) | Description | Unit  | Source |
| ---        | ---           | ---         | ---   | ---    |
| hour | string | Hour of the timestep | h | None |
| demand | number | Total load in Denmark on 16th and 17th of May 2015 as published on ENTSO-E Transparency Platform  | MW  | [ENTSO-E Transparency Platform](https://transparency.entsoe.eu/load-domain/r2/totalLoadR2/show) |
| wind | number | Onshore wind availability for Denmark on 16th and 17th of May 2015 based on MERRA-2 dataset (current fleet) retrieved from renewables.ninja | MW | https://www.renewables.ninja/ |
| pv | number | Solar PV availability for Denmark on 16th and 17th of May 2015 based on SARAH dataset retrieved from renewables.ninja | MW | https://www.renewables.ninja/ |

:::{note}
The time series data can be found in `data/timedata.csv`.
:::


## Scalar data 

The scalar data includes four parameters. All data is based on 2015 values.

- `dispatchable` : 1 if the technology is dispatchable, 0 otherwise 
- `vc`: Variable costs in €/MWh
- `storage_eff`: Storage efficiency for charging and discharging of storage units
- `installed_cap`: Installed capacity in MW

The scalar data has the following field names as columns.

| Field name | Type (Format) | Description |
| --- | --- | --- |
| technology | string | Name of technology |
| parameter | string  | Data parameter | 
| value | number | Value of the parameter |
| unit | string | Unit of the parameter |
| source | string | Source of the parameter |


The data sources of the scalar data are given in the following table.

| Key | Full name | File | Source |
| --- | ---       | ---  | ---    |
| DEA_energy_storage | Danish Energy Agency: Technology data for energy storage | data/technologies.csv | https://ens.dk/en/our-services/projections-and-models/technology-data/technology-data-energy-storage | 
| Pearson_et_al | Pearson et al.: The value of TSO-DSO coordination in re-dispatch with flexible decentralized energy sources: Insights for Germany in 2030 | data/technologies.csv | https://doi.org/10.1016/j.apenergy.2022.119905 |

:::{note}
The scalar data for all technologies can be found in `data/technologies.csv`
:::