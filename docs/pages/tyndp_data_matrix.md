# TYNDP 2022 data

The TYNDP 2022 data matrix tries to gather all data that is mentioned in the Scenario Building Guidelines of the TYNDP 2022.

:::{note}
The data matrix can be found in `data/tyndp2022_data_matrix.xlsx`
:::

## Data matrix description

The following description of the data matrix can also be found on the cover page of the data matrix file.

### Sheets

The excel file contains multiple sheets. The following table provides a description of the different sheets.

| Sheet | Description |
| ---   |      ---    |
| External sources | Lists all external sources stated in SBG                                                |
| TYNDP Data files | Lists all for download available Data files of the TYNDP 2022                           |
| National Trends  | Includes data that is mentioned as relevant for the scenario National Trends in the SBG |
| Cop21            | Includes data that is mentioned as relevant for the scenario Cop21 scenarios in the SBG |
| Prices and Costs | Includes prices and costs data for all scenarios that are mentioned in SBG              |
| Trapunta         | Describes the mentioned data in SBG of the Trapunta Tool                                |
| Ambition Tool    | Describes the mentioned data in SBG of the Ambition Tool                                |
| STEERS addition  | List of all additional data needed for the STEERS methodology                           |

### Field documentation

A description of the structure of the sheets describing the data is provided in the following. For each column, all possible field entries are listed.

| Column             | Options                        | Description                                                                                                                                                                                              |
| ------------------ | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Key                | individual                     | unique identifier for the data point: individual because there are no option categories and every option is individual; empty cells do not have a key because it is not needed to be referenced anywhere |
| Name               | individual                     | describes data point: individual name                                                                                                                                                                    |
| Unit               | individual                     | unit of the datapoint: all individual units are not listed here                                                                                                                                          |
|                    | collection                     | datapoint has multiple units                                                                                                                                                                             |
| Value              | open                           | data is open                                                                                                                                                                                             |
|                    | closed                         | data could not be found; unclear if it means that the same data as in TYNDP 2020 is used                                                                                                                 |
|                    | individual numerical value     | individual numerical value                                                                                                                                                                               |
|                    | unlear                         | see in comment for reason why unclear                                                                                                                                                                    |
| Scenario           | All                            | applicable to all scenarios                                                                                                                                                                              |
|                    | NT                             | applicable to only this scenario                                                                                                                                                                         |
|                    | Cop21                          | applicable to only this scenario                                                                                                                                                                         |
|                    | DE                             | applicable to only this scenario                                                                                                                                                                         |
|                    | GA                             | applicable to only this scenario                                                                                                                                                                         |
| Type               | collection                     | multiple values that are collected under this datapoint, e.g. for several years                                                                                                                          |
|                    | time series                    | data is a time series                                                                                                                                                                                    |
|                    | float                          | data is a single numerical value                                                                                                                                                                         |
| Data Format        | xlsx                           | Excel file                                                                                                                                                                                               |
|                    | Table                          | Listed in Table in SBG                                                                                                                                                                                   |
|                    | Text                           | Mentioned in Text of SBG                                                                                                                                                                                 |
|                    | Figure                         | Presented in a Figure in SBG                                                                                                                                                                             |
|                    | png                            | .png file                                                                                                                                                                                                |
| Tool               | Dispatch model                 | \-                                                                                                                                                                                                       |
|                    | Supply Tool                    | \-                                                                                                                                                                                                       |
|                    | Dispatch (and Expansion) model | \-                                                                                                                                                                                                       |
|                    | Trapunta                       | \-                                                                                                                                                                                                       |
|                    | Ambition Tool                  | \-                                                                                                                                                                                                       |
|                    | Electricity profile            | \-                                                                                                                                                                                                       |
|                    | PECD                           | \-                                                                                                                                                                                                       |
|                    | P2G capacity                   | \-                                                                                                                                                                                                       |
|                    | Postprocessing                 | \-                                                                                                                                                                                                       |
|                    | "name of a data point"         | related to a different data point by being used as input or being an output                                                                                                                              |
| I/O                | Input                          | \-                                                                                                                                                                                                       |
|                    | Output                         | \-                                                                                                                                                                                                       |
|                    | Output/Input                   | This data is output of a tool and used as input for a different one.                                                                                                                                     |
| Reference (Report) | page number                    | Reference in SBG report                                                                                                                                                                                  |
| Source             | Key                            | Keys show to a different row in which the primary source is listed                                                                                                                                       |
|                    | URL                            | URLs link to online source of the data                                                                                                                                                                   |
|                    | ENTSO analysis                 | based on calculation by TYNDP team                                                                                                                                                                       |
|                    | TSO Data collection            | based on TSO Data Collection                                                                                                                                                                             |
|                    | Assumption                     | Assumption made by TYNDP team                                                                                                                                                                            |
| Comment            | text                           | Comment or further informationo on that data point  |  

### Nomenclature

The following abbreviations are used in the data matrix:

| Sheet | Description |
| ---   |      ---    |
| na | not applicable |
| SBG |  Scenario Building Guidelines |
| None | an empty field, there is no information necessary/available |

