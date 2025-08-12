# IndiAPIs

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

The `IndiAPIs` package provides a unified interface to access open data from the **World Bank API** and the **REST Countries API**, with a focus on **India**. It allows users to retrieve up-to-date or historical information on topics such as economic indicators, international demographic statistics, and key geopolitical details related to India.

In addition to API-access functions, the package includes one of the largest curated collections of open datasets focused on **India**. These datasets cover a wide range of topics including population, economy, weather, politics, health, biodiversity, sports, agriculture, cybercrime, infrastructure, and more.

## Installation

You can install the `IndiAPIs` package from CRAN with the following R function:

```R

install.packages("IndiAPIs")

```


## Usage

After installation, load the package and start exploring and using its functions and datasets.

```R

library(IndiAPIs)

```

### IndiAPIs Functions

Below is a list of the main functions included in the package:

- `get_india_child_mortality()`: Get India's Under-5 Mortality Rate from World Bank.

- `get_india_cpi()`: Get India's Consumer Price Index (2010 = 100) from World Bank.

- `get_india_energy_use()`: Get India's Energy Use (kg of oil equivalent per capita) from World Bank.

- `get_india_gdp()`: Get India's GDP (current US$) from World Bank.

- `get_india_hospital_beds()`: Get India's Hospital Beds (per 1,000 people) from World Bank.

- `get_india_life_expectancy()`: Get India's Life Expectancy at Birth from World Bank.

- `get_india_literacy_rate()`: Get India's Adult Literacy Rate from World Bank.

- `get_india_population()`: Get India's Total Population from World Bank.

- `get_india_unemployment()`: Get India's Unemployment Rate (% of total labor force) from World Bank.

- `get_country_info_in()`: Get Key Country Information for India.

- `view_datasets_IndiAPIs()`: View Available Datasets in IndiAPIs.

## Dataset Suffixes

Each dataset in `IndiAPIs` is labeled with a *suffix* to indicate its structure and type:

- `_df`: A standard data frame object.

- `_dt`: A data table object.

- `_ts`: A time series object.

## Datasets Included in IndiAPIs

In addition to API access functions, `IndiAPIs` offers one of the largest curated collections of open datasets focused on **India**. These preloaded datasets cover a wide range of topics including population, economy, weather, politics, health, biodiversity, sports, agriculture, cybercrime, infrastructure, and more. Below are some featured examples:

- `BurdwanWeather_df`: A data frame containing weekly weather data for the rice growing season in the Burdwan district of West Bengal, India.

- `birds_watching_tbl_df`: A tibble containing detailed information on bird species observed in India,
including species names, scientific names, the date of last observation.

- `DelhiPotatoPrices_ts`: A time series containing the monthly average potato prices of the Delhi market from January 2010 to July 2020.


## Example Code:

```R

# Load the package

library(IndiAPIs)

# Retrieves essential information about India

get_country_info_in()

# Get India's Population (Total) from World Bank

get_india_population()

# Load a dataset

data(India_census2011_tbl_df)

# Shows six rows of the dataset

head(India_census2011_tbl_df)

# Display the structure of the dataset

str(India_census2011_tbl_df)

# Shows the whole dataset

View(India_census2011_tbl_df)


```
