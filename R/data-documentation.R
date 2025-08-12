# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


#' Indian Population (Census and Projections) by States
#'
#' This dataset, indianPopulation_tbl_df, is a tibble containing census data and
#' population projections for Indian states across multiple years. It includes
#' state codes, abbreviations, names, and population figures for the years 1901,
#' 1951, 2011, 2023, and 2024.
#'
#' The dataset name has been kept as 'indianPopulation_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name indianPopulation_tbl_df
#' @format A tibble with 36 observations and 8 variables:
#' \describe{
#'   \item{code}{Numeric state code (numeric)}
#'   \item{abbr}{State abbreviation (character)}
#'   \item{state}{Full state name (character)}
#'   \item{pop_1901}{Population in the year 1901 (numeric)}
#'   \item{pop_1951}{Population in the year 1951 (numeric)}
#'   \item{pop_2011}{Population in the year 2011 (numeric)}
#'   \item{pop_2023}{Population in the year 2023 (numeric)}
#'   \item{pop_2024}{Population in the year 2024 (numeric)}
#' }
#' @source Data taken from the \pkg{mapindia} package version 1.0.1
#' @usage data(indianPopulation_tbl_df)
#' @export
load("data/indianPopulation_tbl_df.rda")
NULL


#' West Bengal Population, Sex-Ratio, and Literacy Data (2011)
#'
#' This dataset, WestBengalPop_tbl_df, is a tibble containing demographic data for
#' districts of West Bengal, India, based on the 2011 Census. It includes total
#' population, population increase percentage, sex ratio, literacy percentage,
#' and population density for each district.
#'
#' The dataset name has been kept as 'WestBengalPop_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name WestBengalPop_tbl_df
#' @format A tibble with 23 observations and 8 variables:
#' \describe{
#'   \item{code}{Numeric district code (numeric)}
#'   \item{abbr}{District abbreviation (character)}
#'   \item{district}{Full district name (character)}
#'   \item{pop_2011}{Population in the year 2011 (numeric)}
#'   \item{pop_increase_2011}{Population increase percentage in 2011 compared to the previous census (numeric)}
#'   \item{sex_ratio_2011}{Sex ratio in 2011, expressed as females per 1,000 males (numeric)}
#'   \item{literacy_per_2011}{Literacy rate in 2011, expressed as a percentage (numeric)}
#'   \item{density_2011}{Population density in 2011 (persons per square kilometer) (numeric)}
#' }
#' @source Data taken from the \pkg{mapindia} package version 1.0.1
#' @usage data(WestBengalPop_tbl_df)
#' @export
load("data/WestBengalPop_tbl_df.rda")
NULL



#' Politics and Land Reforms in India
#'
#' This dataset, IndiaLandReforms_df, is a data frame containing information on
#' politics and land reforms in India. It includes variables related to agricultural
#' landholding patterns, rural development indicators, election outcomes, political
#' participation, and socio-economic measures across different districts and years.
#'
#' The dataset name has been kept as 'IndiaLandReforms_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name IndiaLandReforms_df
#' @format A data frame with 2670 observations and 32 variables:
#' \describe{
#'   \item{mouza}{Mouza code or identifier (integer)}
#'   \item{year}{Year of observation (integer)}
#'   \item{district}{District code or identifier (integer)}
#'   \item{rplacul}{Proportion of land cultivated (numeric)}
#'   \item{rpdrhh}{Proportion of rural households (numeric)}
#'   \item{rblacul}{Proportion of land below a certain threshold (numeric)}
#'   \item{rbgdrrghh}{Proportion of rural households with a given characteristic (numeric)}
#'   \item{election}{Election year indicator (integer)}
#'   \item{preelect}{Pre-election indicator (integer)}
#'   \item{edwalfco}{Electoral variable - women in local councils (numeric)}
#'   \item{erlesscu}{Electoral variable - less cultivated land (numeric)}
#'   \item{ermgcu}{Electoral variable - medium cultivated land (numeric)}
#'   \item{ersmcu}{Electoral variable - small cultivated land (numeric)}
#'   \item{ermdcu}{Electoral variable - medium developed cultivated land (numeric)}
#'   \item{ercusmol}{Electoral variable - custom smallholder measure (numeric)}
#'   \item{ercubgol}{Electoral variable - custom big landholder measure (numeric)}
#'   \item{erillnb}{Electoral variable - illiteracy rate (numeric)}
#'   \item{erlow}{Electoral variable - low-income households (numeric)}
#'   \item{ratleft0}{Political variable - left party ratio before adjustment (numeric)}
#'   \item{dwalfco}{Development variable - women in local councils (numeric)}
#'   \item{inflat}{Inflation rate (numeric)}
#'   \item{smfempyv}{Share of female employment in youth (numeric)}
#'   \item{incseats}{Number of seats won by incumbents (numeric)}
#'   \item{lfseats}{Number of seats won by left parties (numeric)}
#'   \item{inflflag}{Inflation flag indicator (numeric)}
#'   \item{inclflag}{Incumbent flag indicator (numeric)}
#'   \item{lflflag}{Left party flag indicator (numeric)}
#'   \item{ratleft}{Political variable - left party ratio (numeric)}
#'   \item{infiw}{Inflation index for wages (numeric)}
#'   \item{infumme}{Inflation index for unspecified metric (numeric)}
#'   \item{infal}{Inflation index for agricultural labor (numeric)}
#'   \item{gp}{Gram Panchayat code or identifier (integer)}
#' }
#' @source Data taken from the \pkg{pder} package version 1.0-2
#' @usage data(IndiaLandReforms_df)
#' @export
load("data/IndiaLandReforms_df.rda")
NULL


#' Yearly Rice Yield Data in Burdwan District, West Bengal
#'
#' This dataset, BurdwanRiceYield_df, is a data frame containing yearly rice yield
#' data for the Burdwan district of West Bengal, India, over a period of 39 years.
#' It includes the year and the yield in tonnes per hectare for each recorded year.
#'
#' The dataset name has been kept as 'BurdwanRiceYield_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name BurdwanRiceYield_df
#' @format A data frame with 39 observations and 2 variables:
#' \describe{
#'   \item{Year}{Year of observation (character)}
#'   \item{burdwan}{Rice yield in tonnes per hectare (numeric)}
#' }
#' @source Data taken from the \pkg{weatherindices} package version 0.1.0
#' @usage data(BurdwanRiceYield_df)
#' @export
load("data/BurdwanRiceYield_df.rda")
NULL


#' Weekly Weather Data for Rice Growing Season in Burdwan District
#'
#' This dataset, BurdwanWeather_df, is a data frame containing weekly weather data
#' for the rice growing season in the Burdwan district of West Bengal, India,
#' over a period of 39 years. It includes the date, standard meteorological week,
#' week number, and four weather variables: maximum temperature, minimum temperature,
#' precipitation, and relative humidity.
#'
#' The dataset name has been kept as 'BurdwanWeather_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name BurdwanWeather_df
#' @format A data frame with 741 observations and 7 variables:
#' \describe{
#'   \item{Date}{Date of observation (character)}
#'   \item{SMW}{Standard Meteorological Week (integer)}
#'   \item{Week}{Week number within the season (integer)}
#'   \item{Max.Temperature}{Maximum temperature in degrees Celsius (numeric)}
#'   \item{Min.Temperature}{Minimum temperature in degrees Celsius (numeric)}
#'   \item{Precipitation}{Total precipitation in millimeters (numeric)}
#'   \item{Relative.Humidity}{Relative humidity in percentage (numeric)}
#' }
#' @source Data taken from the \pkg{weatherindices} package version 0.1.0
#' @usage data(BurdwanWeather_df)
#' @export
load("data/BurdwanWeather_df.rda")
NULL



#' Changes in Human Birth and Death Rates in India Over the 20th Century
#'
#' This dataset, BirthDeathRates_df, is a data frame containing data on human
#' birth and death rates in India over the 20th century. It includes the year,
#' birth rate, and death rate for each recorded period.
#'
#' The dataset name has been kept as 'BirthDeathRates_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name BirthDeathRates_df
#' @format A data frame with 27 observations and 3 variables:
#' \describe{
#'   \item{Year}{Year of observation (factor)}
#'   \item{Birth.rate}{Birth rate (numeric)}
#'   \item{death.rate}{Death rate (numeric)}
#' }
#' @source Data taken from the \pkg{gpk} package version 1.0
#' @usage data(BirthDeathRates_df)
#' @export
load("data/BirthDeathRates_df.rda")
NULL


#' Distribution of Butterfly Species in India
#'
#' This dataset, ButterflySpecies_df, is a data frame containing the distribution of butterfly
#' species counts among five groups across different localities in India. It includes
#' information on the total number of species and counts for each butterfly group
#' such as Skippers, Swallow tails, Whites & Yellows, Blues, and Brush Footed.
#'
#' The dataset name has been kept as 'ButterflySpecies_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name ButterflySpecies_df
#' @format A data frame with 44 observations and 9 variables:
#' \describe{
#'   \item{Serial_Number}{Serial number identifier (integer)}
#'   \item{Area}{Geographic area within India (factor with 8 levels)}
#'   \item{Locality}{Specific locality name (factor with 44 levels)}
#'   \item{Total_Species_count}{Total number of butterfly species in the locality (integer)}
#'   \item{Skippers}{Count of Skippers species (integer)}
#'   \item{Swallow_tails}{Count of Swallow tail species (integer)}
#'   \item{Whites_Yellows}{Count of Whites and Yellows species (integer)}
#'   \item{Blues}{Count of Blues species (integer)}
#'   \item{Brush_Footed}{Count of Brush Footed species (integer)}
#' }
#' @source Data taken from the \pkg{gpk} package version 1.0
#' @usage data(ButterflySpecies_df)
#' @export
load("data/ButterflySpecies_df.rda")
NULL


#' List of places, abbreviations, and populations in India
#'
#' This dataset, IndiaPopulation_dt, is a data table containing the names of states and union territories
#' in India along with their respective abbreviations and populations. The dataset also includes the
#' total population of India. These are 2019 projections as reported in the Unique Identification
#' Authority of India 2019-2020 Annual Report.
#'
#' The dataset name has been kept as 'IndiaPopulation_dt' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'dt' indicates that the dataset is a data.table object. The original content has not been modified
#' in any way.
#'
#' @name IndiaPopulation_dt
#' @format A data.table with 39 observations and 3 variables:
#' \describe{
#'   \item{place}{Name of the state or union territory (character)}
#'   \item{abbrev}{Abbreviation for the state or union territory (character)}
#'   \item{population}{Population in 2019 projection (numeric)}
#' }
#' @source Data taken from the \pkg{covid19india} package version 0.1.4
#' @usage data(IndiaPopulation_dt)
#' @export
load("data/IndiaPopulation_dt.rda")
NULL


#' Weekly deaths from bubonic plague in Bombay in 1905-06
#'
#' This dataset, BombayPlague1905_df, is a data frame containing the number of plague deaths per week
#' in Bombay in 1905–06. The data was originally reported by Kermack and McCormick (1927). Bombay is the former
#' name for the Indian coastal city Mumbai, which is the capital of Maharashtra and one of the largest cities
#' in the world.
#'
#' The dataset name has been kept as 'BombayPlague1905_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name BombayPlague1905_df
#' @format A data frame with 32 observations and 2 variables:
#' \describe{
#'   \item{Week}{Week number of the observation period (integer)}
#'   \item{CumulativeDeaths}{Cumulative number of plague deaths (integer)}
#' }
#' @source Data taken from the \pkg{primer} package version 1.2.0
#' @usage data(BombayPlague1905_df)
#' @export
load("data/BombayPlague1905_df.rda")
NULL



#' Cricket data set for different seasons of Indian Premier League
#'
#' This dataset, IPLCricket_tbl_df, is a tibble containing match data from the Indian Premier League (IPL)
#' played by teams representing different cities in India from 2008 to 2016.
#'
#' The dataset name has been kept as 'IPLCricket_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name IPLCricket_tbl_df
#' @format A tibble with 8,560 observations and 10 variables:
#' \describe{
#'   \item{season}{Season year of the IPL (numeric)}
#'   \item{match_id}{Unique match identifier (numeric)}
#'   \item{batting_team}{Name of the batting team (character)}
#'   \item{bowling_team}{Name of the bowling team (character)}
#'   \item{inning}{Inning number (numeric)}
#'   \item{over}{Over number (numeric)}
#'   \item{wicket}{Number of wickets taken in the over (numeric)}
#'   \item{dot_balls}{Number of dot balls in the over (numeric)}
#'   \item{runs_per_over}{Runs scored in the over (numeric)}
#'   \item{run_rate}{Run rate for the over (numeric)}
#' }
#' @source Data taken from the \pkg{gravitas} package version 0.1.3
#' @usage data(IPLCricket_tbl_df)
#' @export
load("data/IPLCricket_tbl_df.rda")
NULL



#' Monthly Average Potato Price of Delhi Market (India)
#'
#' This dataset, DelhiPotatoPrices_ts, is a time series containing the monthly average potato prices
#' of the Delhi market from January 2010 to July 2020.
#'
#' The dataset name has been kept as 'DelhiPotatoPrices_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name DelhiPotatoPrices_ts
#' @format A time series with 127 time points and 1 variable:
#' \describe{
#'   \item{Delhi}{Monthly average potato price in the Delhi market (numeric)}
#' }
#' @source Data taken from the \pkg{stlELM} package version 0.1.1
#' @usage data(DelhiPotatoPrices_ts)
#' @export
load("data/DelhiPotatoPrices_ts.rda")
NULL


#' Gold Prices Across Six Indian Cities from February 2022 to January 2023
#'
#' This dataset, GoldPricesIndia_df, is a data frame containing the monthly high and low
#' prices (in rupees per gram) of 22-carat gold in six Indian cities: Chennai, Kolkatta,
#' Bangalore, Madurai, Hyderabad, and Delhi. Data were collected from February 2022 to January 2023.
#'
#' The dataset name has been kept as 'GoldPricesIndia_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' IndiAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name GoldPricesIndia_df
#' @format A data frame with 12 observations and 13 variables:
#' \describe{
#'   \item{Month}{Month of observation (character)}
#'   \item{Chennai_Low}{Lowest price in Chennai (numeric)}
#'   \item{Chennai_High}{Highest price in Chennai (numeric)}
#'   \item{Kolkatta_Low}{Lowest price in Kolkatta (numeric)}
#'   \item{Kolkatta_High}{Highest price in Kolkatta (numeric)}
#'   \item{Bangalore_Low}{Lowest price in Bangalore (numeric)}
#'   \item{Bangalore_High}{Highest price in Bangalore (numeric)}
#'   \item{Madurai_Low}{Lowest price in Madurai (numeric)}
#'   \item{Madurai_High}{Highest price in Madurai (numeric)}
#'   \item{Hyderabad_Low}{Lowest price in Hyderabad (numeric)}
#'   \item{Hyderabad_High}{Highest price in Hyderabad (numeric)}
#'   \item{Delhi_Low}{Lowest price in Delhi (numeric)}
#'   \item{Delhi_High}{Highest price in Delhi (numeric)}
#' }
#' @source Data taken from the \pkg{neutrostat} package version 0.0.2
#' @usage data(GoldPricesIndia_df)
#' @export
load("data/GoldPricesIndia_df.rda")
NULL


#' Indian Startup Funding
#'
#' This dataset, startup_funding_tbl_df, is a tibble containing detailed funding
#' information for startups in India. It includes the serial number, date, startup name,
#' industry vertical, sub-vertical, city location, investors' names, investment type,
#' amount in USD, and any additional remarks. The dataset preserves the original
#' structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'startup_funding_tbl_df' to maintain consistency
#' with the naming conventions in the IndiAPIs package. The suffix 'tbl_df' indicates
#' that this is a tibble data frame. The original content has not been modified in any way.
#'
#' @name startup_funding_tbl_df
#' @format A tibble with 3,044 observations and 10 variables:
#' \describe{
#'   \item{Sr No}{Serial number of the record (numeric)}
#'   \item{Date dd/mm/yyyy}{Date of the funding record in dd/mm/yyyy format (character)}
#'   \item{Startup Name}{Name of the startup (character)}
#'   \item{Industry Vertical}{Primary industry vertical of the startup (character)}
#'   \item{SubVertical}{Specific sub-vertical within the industry (character)}
#'   \item{City  Location}{City where the startup is located (character)}
#'   \item{Investors Name}{Name(s) of the investor(s) (character)}
#'   \item{InvestmentnType}{Type of investment (character)}
#'   \item{Amount in USD}{Funding amount in US dollars (character)}
#'   \item{Remarks}{Additional remarks related to the record (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/sudalairajkumar/indian-startup-funding}
#' @usage data(startup_funding_tbl_df)
#' @export
load("data/startup_funding_tbl_df.rda")
NULL



#' Shark Tank India Dataset
#'
#' This dataset, India_SharkTank_tbl_df, is a tibble containing detailed information on pitches
#' presented on Shark Tank India. It includes episode and pitch numbers, brand names, business ideas,
#' deal status, financial details (ask amount, equity, valuation, deal amount, equity, and valuation),
#' presence of each shark during the pitch, whether each shark invested, total sharks invested,
#' amount per shark, and equity per shark. The dataset preserves the original structure from its source
#' on Kaggle.
#'
#' The dataset name has been kept as 'India_SharkTank_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame.
#' The original content has not been modified in any way.
#'
#' @name India_SharkTank_tbl_df
#' @format A tibble with 117 observations and 28 variables:
#' \describe{
#'   \item{episode_number}{Episode number (numeric)}
#'   \item{pitch_number}{Pitch number within the episode (numeric)}
#'   \item{brand_name}{Name of the brand presented (character)}
#'   \item{idea}{Business idea description (character)}
#'   \item{deal}{Indicator if a deal was made (numeric; 1 = yes, 0 = no)}
#'   \item{pitcher_ask_amount}{Amount requested by the pitcher (numeric)}
#'   \item{ask_equity}{Equity percentage requested by the pitcher (numeric)}
#'   \item{ask_valuation}{Valuation based on the pitcher’s ask (numeric)}
#'   \item{deal_amount}{Amount invested in the deal (numeric)}
#'   \item{deal_equity}{Equity percentage given in the deal (numeric)}
#'   \item{deal_valuation}{Valuation based on the deal (numeric)}
#'   \item{ashneer_present}{Indicator if Ashneer was present (numeric; 1 = yes, 0 = no)}
#'   \item{anupam_present}{Indicator if Anupam was present (numeric; 1 = yes, 0 = no)}
#'   \item{aman_present}{Indicator if Aman was present (numeric; 1 = yes, 0 = no)}
#'   \item{namita_present}{Indicator if Namita was present (numeric; 1 = yes, 0 = no)}
#'   \item{vineeta_present}{Indicator if Vineeta was present (numeric; 1 = yes, 0 = no)}
#'   \item{peyush_present}{Indicator if Peyush was present (numeric; 1 = yes, 0 = no)}
#'   \item{ghazal_present}{Indicator if Ghazal was present (numeric; 1 = yes, 0 = no)}
#'   \item{ashneer_deal}{Indicator if Ashneer invested (numeric; 1 = yes, 0 = no)}
#'   \item{anupam_deal}{Indicator if Anupam invested (numeric; 1 = yes, 0 = no)}
#'   \item{aman_deal}{Indicator if Aman invested (numeric; 1 = yes, 0 = no)}
#'   \item{namita_deal}{Indicator if Namita invested (numeric; 1 = yes, 0 = no)}
#'   \item{vineeta_deal}{Indicator if Vineeta invested (numeric; 1 = yes, 0 = no)}
#'   \item{peyush_deal}{Indicator if Peyush invested (numeric; 1 = yes, 0 = no)}
#'   \item{ghazal_deal}{Indicator if Ghazal invested (numeric; 1 = yes, 0 = no)}
#'   \item{total_sharks_invested}{Total number of sharks who invested (numeric)}
#'   \item{amount_per_shark}{Investment amount per shark (numeric)}
#'   \item{equity_per_shark}{Equity percentage per shark (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/shivavashishtha/shark-tank-india-dataset}
#' @usage data(India_SharkTank_tbl_df)
#' @export
load("data/India_SharkTank_tbl_df.rda")
NULL



#' India GDP (1960-2022)
#'
#' This dataset, GDPIndia_tbl_df, is a tibble containing historical GDP data for India from 1960 to 2022.
#' It includes columns as present in the original source file, preserving their exact names and formats.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'GDPIndia_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame.
#' The original content has not been modified in any way.
#'
#' @name GDPIndia_tbl_df
#' @format A tibble with 63 observations and 5 variables:
#' \describe{
#'   \item{...1}{Original column from the source file (numeric)}
#'   \item{India GDP - Historical Data...2}{Original column from the source file (character)}
#'   \item{India GDP - Historical Data...3}{Original column from the source file (character)}
#'   \item{India GDP - Historical Data...4}{Original column from the source file (character)}
#'   \item{India GDP - Historical Data...5}{Original column from the source file (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/dheerajmukati/india-gdp-19602022}
#' @usage data(GDPIndia_tbl_df)
#' @export
load("data/GDPIndia_tbl_df.rda")
NULL


#' Rainfall in India (1901-2021)
#'
#' This dataset, rainfall_tbl_df, is a tibble containing historical monthly rainfall data
#' for subdivisions in India from 1901 to 2021. It includes rainfall measurements for June,
#' July, August, September, and the total for June to September, along with the year and subdivision name.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'rainfall_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name rainfall_tbl_df
#' @format A tibble with 4,332 observations and 7 variables:
#' \describe{
#'   \item{subdivision}{Name of the subdivision (character)}
#'   \item{YEAR}{Year of observation (numeric)}
#'   \item{JUN}{Rainfall in June (numeric)}
#'   \item{JUL}{Rainfall in July (numeric)}
#'   \item{AUG}{Rainfall in August (numeric)}
#'   \item{SEP}{Rainfall in September (numeric)}
#'   \item{JUN-SEP}{Total rainfall from June to September (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/aksahaha/rainfall-india}
#' @usage data(rainfall_tbl_df)
#' @export
load("data/rainfall_tbl_df.rda")
NULL


#' Data Science Jobs in India
#'
#' This dataset, DataScienceJobs_tbl_df, is a tibble containing job listings related to Data Science
#' positions across India. It includes company names, job titles, minimum experience required,
#' average, minimum and maximum salaries, and the number of salary reports. The dataset preserves
#' the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'DataScienceJobs_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame.
#' The original content has not been modified in any way.
#'
#' @name DataScienceJobs_tbl_df
#' @format A tibble with 1,602 observations and 8 variables:
#' \describe{
#'   \item{...1}{Original column from the source file (numeric)}
#'   \item{company_name}{Name of the company offering the job (character)}
#'   \item{job_title}{Title of the job position (character)}
#'   \item{min_experience}{Minimum experience required in years (numeric)}
#'   \item{avg_salary}{Average salary offered (numeric)}
#'   \item{min_salary}{Minimum salary offered (numeric)}
#'   \item{max_salary}{Maximum salary offered (numeric)}
#'   \item{num_of_salaries}{Number of salary reports for the job (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/madhurpant/data-science-jobs-in-india}
#' @usage data(DataScienceJobs_tbl_df)
#' @export
load("data/DataScienceJobs_tbl_df.rda")
NULL


#' Indian Companies in the Fortune Global 500
#'
#' This dataset, India_Companies_tbl_df, is a tibble containing information about notable
#' companies headquartered in India, including those in the Fortune Global 500. It includes
#' company names, industry, sector, headquarters location, founding year, notes,
#' private or state ownership status, and whether the company is active or defunct.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'India_Companies_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name India_Companies_tbl_df
#' @format A tibble with 493 observations and 8 variables:
#' \describe{
#'   \item{Name}{Name of the company (character)}
#'   \item{Industry}{Industry classification (character)}
#'   \item{Sector}{Sector classification (character)}
#'   \item{Headquarters}{Primary headquarters location (character)}
#'   \item{Founded}{Year the company was founded (character)}
#'   \item{Notes}{Additional notes or remarks (character)}
#'   \item{Private/State}{Ownership status: private or state-owned (character)}
#'   \item{Active/Defunct}{Company status: active or defunct (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/mrmars1010/companies-in-india}
#' @usage data(India_Companies_tbl_df)
#' @export
load("data/India_Companies_tbl_df.rda")
NULL


#' Hospitals Count in India - Statewise
#'
#' This dataset, hospitalcount_tbl_df, is a tibble containing the count of hospitals in India
#' by state and union territory. It includes the number of hospitals in the public sector,
#' the private sector, and the total number of hospitals (public + private) for each state or UT.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'hospitalcount_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame.
#' The original content has not been modified in any way.
#'
#' @name hospitalcount_tbl_df
#' @format A tibble with 37 observations and 4 variables:
#' \describe{
#'   \item{States/UTs}{Name of the state or union territory (character)}
#'   \item{Number of hospitals in public sector}{Number of hospitals in the public sector (numeric)}
#'   \item{Number of hospitals in private sector}{Number of hospitals in the private sector (numeric)}
#'   \item{Total number of hospitals (public+private)}{Total number of hospitals combining public and private sectors (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/gokulprakash22/hospitals-count-in-india-statewise}
#' @usage data(hospitalcount_tbl_df)
#' @export
load("data/hospitalcount_tbl_df.rda")
NULL

#' Top 500 Indian Cities
#'
#' This dataset, Top500Cities_tbl_df, is a tibble containing demographic and literacy data
#' for the top 500 cities in India. It includes population counts by gender and age group,
#' literacy rates, sex ratios, graduation counts, and location information. The dataset
#' preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'Top500Cities_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name Top500Cities_tbl_df
#' @format A tibble with 493 observations and 22 variables:
#' \describe{
#'   \item{name_of_city}{Name of the city (character)}
#'   \item{state_code}{State code (numeric)}
#'   \item{state_name}{Name of the state (character)}
#'   \item{dist_code}{District code (numeric)}
#'   \item{population_total}{Total population (numeric)}
#'   \item{population_male}{Male population (numeric)}
#'   \item{population_female}{Female population (numeric)}
#'   \item{0-6_population_total}{Total population aged 0-6 years (numeric)}
#'   \item{0-6_population_male}{Male population aged 0-6 years (numeric)}
#'   \item{0-6_population_female}{Female population aged 0-6 years (numeric)}
#'   \item{literates_total}{Total literates (numeric)}
#'   \item{literates_male}{Male literates (numeric)}
#'   \item{literates_female}{Female literates (numeric)}
#'   \item{sex_ratio}{Sex ratio (females per 1000 males) (numeric)}
#'   \item{child_sex_ratio}{Child sex ratio (females per 1000 males) (numeric)}
#'   \item{effective_literacy_rate_total}{Effective literacy rate total (numeric)}
#'   \item{effective_literacy_rate_male}{Effective literacy rate for males (numeric)}
#'   \item{effective_literacy_rate_female}{Effective literacy rate for females (numeric)}
#'   \item{location}{Location coordinates or description (character)}
#'   \item{total_graduates}{Total number of graduates (numeric)}
#'   \item{male_graduates}{Number of male graduates (numeric)}
#'   \item{female_graduates}{Number of female graduates (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/zed9941/top-500-indian-cities}
#' @usage data(Top500Cities_tbl_df)
#' @export
load("data/Top500Cities_tbl_df.rda")
NULL



#' Indian Unicorn Startups 2023
#'
#' This dataset, Unicorn_startups_tbl_df, is a tibble containing information about Indian unicorn startups as of 2023.
#' It includes company names, sectors, entry valuations, current valuations, entry years, locations, and select investors.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'Unicorn_startups_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name Unicorn_startups_tbl_df
#' @format A tibble with 102 observations and 8 variables:
#' \describe{
#'   \item{No.}{Serial number (numeric)}
#'   \item{Company}{Name of the startup company (character)}
#'   \item{Sector}{Business sector of the startup (character)}
#'   \item{Entry Valuation^^ (B)}{Entry valuation in billions (numeric)}
#'   \item{Valuation (B)}{Current valuation in billions (numeric)}
#'   \item{Entry}{Year of entry into unicorn status (character)}
#'   \item{Location}{Location of the startup (character)}
#'   \item{Select Investors}{Select investors in the startup (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/mlvprasad/indian-unicorn-startups-2023-june-updated}
#' @usage data(Unicorn_startups_tbl_df)
#' @export
load("data/Unicorn_startups_tbl_df.rda")
NULL



#' Petrol Prices in India
#'
#' This dataset, petrol_prices_tbl_df, is a tibble containing petrol price information across
#' various cities in India. It includes the city name, date of the price record, and the petrol
#' rate on that date. The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'petrol_prices_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name petrol_prices_tbl_df
#' @format A tibble with 1,024 observations and 3 variables:
#' \describe{
#'   \item{city}{Name of the city (character)}
#'   \item{date}{Date of the petrol price record (Date)}
#'   \item{rate}{Petrol price rate (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/sandipdevre/petrol-prices-in-india}
#' @usage data(petrol_prices_tbl_df)
#' @export
load("data/petrol_prices_tbl_df.rda")
NULL


#' India Road and Population Data by State
#'
#' This dataset, road_population_tbl_df, is a tibble containing detailed information about road infrastructure
#' and population data for Indian states. It includes lengths of various road types, road density metrics,
#' area statistics, and rural and urban population data according to the 2011 census.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'road_population_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name road_population_tbl_df
#' @format A tibble with 36 observations and 27 variables:
#' \describe{
#'   \item{Name of the States}{Name of the state or union territory (character)}
#'   \item{National Highways}{Length of national highways in kilometers (numeric)}
#'   \item{State Highways}{Length of state highways in kilometers (numeric)}
#'   \item{District Roads}{Length of district roads in kilometers (numeric)}
#'   \item{Rural Roads}{Length of rural roads in kilometers (numeric)}
#'   \item{Urban roads}{Length of urban roads in kilometers (numeric)}
#'   \item{Project Roads}{Length of project roads in kilometers (numeric)}
#'   \item{Total road Length}{Total length of roads in kilometers (numeric)}
#'   \item{Total Area}{Total area of the state/UT in square kilometers (numeric)}
#'   \item{Urban Road density}{Density of urban roads (numeric)}
#'   \item{Rural Road density}{Density of rural roads (numeric)}
#'   \item{Entire State Road length per 1000 sq km}{Road length per 1000 square kilometers of entire state (numeric)}
#'   \item{Urban Road lngth per 1000 sq km}{Urban road length per 1000 square kilometers (numeric)}
#'   \item{Rural Road lngth per 1000 sq km}{Rural road length per 1000 square kilometers (numeric)}
#'   \item{Road Density}{Overall road density (numeric)}
#'   \item{Road Density per 1000 Sq. Km - National Highways}{National highways road density per 1000 sq km (numeric)}
#'   \item{Road Density per 1000 Sq. Km - State Highways}{State highways road density per 1000 sq km (numeric)}
#'   \item{Road Density per 1000 Sq. Km - District Roads}{District roads road density per 1000 sq km (numeric)}
#'   \item{Road Density per 1000 Sq. Km - Rural Roads}{Rural roads road density per 1000 sq km (numeric)}
#'   \item{Road Density per 1000 Sq. Km - Urban roads}{Urban roads road density per 1000 sq km (numeric)}
#'   \item{Road Density per 1000 Sq. Km - Project Roads}{Project roads road density per 1000 sq km (numeric)}
#'   \item{Area}{Area of the state/UT (numeric)}
#'   \item{Rural Area (2011 census)}{Rural area in 2011 census (numeric)}
#'   \item{Urban Area (2011 census)}{Urban area in 2011 census (numeric)}
#'   \item{Rural Pop (2011 census)}{Rural population according to 2011 census (numeric)}
#'   \item{Urban Pop (2011 census)}{Urban population according to 2011 census (numeric)}
#'   \item{Total  Population}{Total population of the state/UT (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/zsinghrahulk/india-roadforpopulation-data}
#' @usage data(road_population_tbl_df)
#' @export
load("data/road_population_tbl_df.rda")
NULL



#' Daily Diesel Fuel Price Data in India (2002-2020)
#'
#' This dataset, diesel_fuelprice_tbl_df, is a tibble containing daily diesel fuel price data across multiple cities and states in India
#' from 2002 to 2020. It includes city and state information, along with the date and diesel price rate.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'diesel_fuelprice_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name diesel_fuelprice_tbl_df
#' @format A tibble with 17,235 observations and 4 variables:
#' \describe{
#'   \item{city}{Name of the city (character)}
#'   \item{date}{Date of the observation (Date)}
#'   \item{rate}{Diesel price rate (numeric)}
#'   \item{state}{Name of the state (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/sudhirnl7/fuel-price-in-india}
#' @usage data(diesel_fuelprice_tbl_df)
#' @export
load("data/diesel_fuelprice_tbl_df.rda")
NULL



#' Daily Petrol Fuel Price Data in India (2002-2020)
#'
#' This dataset, petrol_fuelprice_tbl_df, is a tibble containing daily petrol fuel price data across multiple cities and states in India
#' from 2002 to 2020. It includes city and state information, along with the date and petrol price rate.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'petrol_fuelprice_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name petrol_fuelprice_tbl_df
#' @format A tibble with 5,048 observations and 4 variables:
#' \describe{
#'   \item{city}{Name of the city (character)}
#'   \item{date}{Date of the observation (Date)}
#'   \item{rate}{Petrol price rate (numeric)}
#'   \item{state}{Name of the state (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/sudhirnl7/fuel-price-in-india}
#' @usage data(petrol_fuelprice_tbl_df)
#' @export
load("data/petrol_fuelprice_tbl_df.rda")
NULL



#' Exports and Imports of India (1997-July 2022)
#'
#' This dataset, exports_imports_tbl_df, is a tibble containing export and import data for India
#' from 1997 to July 2022. It includes information on country-wise exports, imports, total trade,
#' and trade balance along with the financial year start and end dates.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'exports_imports_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name exports_imports_tbl_df
#' @format A tibble with 5,994 observations and 7 variables:
#' \describe{
#'   \item{Country}{Country name (character)}
#'   \item{Export}{Export value (numeric)}
#'   \item{Import}{Import value (numeric)}
#'   \item{Total Trade}{Total trade value (numeric)}
#'   \item{Trade Balance}{Trade balance value (numeric)}
#'   \item{Financial Year(start)}{Financial year start (numeric)}
#'   \item{Financial Year(end)}{Financial year end (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/ramjasmaurya/exports-and-imports-of-india19972022}
#' @usage data(exports_imports_tbl_df)
#' @export
load("data/exports_imports_tbl_df.rda")
NULL


#' Indian Districts Population Data (2011 Census)
#'
#' This dataset, India_census2011_tbl_df, is a tibble containing population statistics for Indian districts
#' based on the 2011 Census. It includes district ranking, population, growth rate, sex ratio,
#' and literacy statistics for each district. The dataset preserves the original structure
#' from its source on Kaggle.
#'
#' The dataset name has been kept as 'India_census2011_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name India_census2011_tbl_df
#' @format A tibble with 610 observations and 7 variables:
#' \describe{
#'   \item{Ranking}{District ranking (numeric)}
#'   \item{District}{District name (character)}
#'   \item{State}{State name (character)}
#'   \item{Population}{Population count (numeric)}
#'   \item{Growth}{Population growth rate (character)}
#'   \item{Sex-Ratio}{Sex ratio (number of females per 1000 males) (numeric)}
#'   \item{Literacy}{Literacy rate (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/shiivvvaam/indian-districts-population-data}
#' @usage data(India_census2011_tbl_df)
#' @export
load("data/India_census2011_tbl_df.rda")
NULL



#' Indian Bird Observations: Tracking Species
#'
#' This dataset, birds_watching_tbl_df, is a tibble containing detailed information on bird species observed in India,
#' including species names, scientific names, the date of last observation, and total recorded sightings.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'birds_watching_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name birds_watching_tbl_df
#' @format A tibble with 490 observations and 4 variables:
#' \describe{
#'   \item{name}{Common name of the bird species (character)}
#'   \item{scientific name}{Scientific name of the bird species (character)}
#'   \item{last observation}{Date of last recorded observation (character)}
#'   \item{total observations}{Total number of recorded sightings (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/prajwaldongre/indian-bird-observations-tracking-species}
#' @usage data(birds_watching_tbl_df)
#' @export
load("data/birds_watching_tbl_df.rda")
NULL



#' CyberCrime in India
#'
#' This dataset, CyberCrime_India_tbl_df, is a tibble containing cybercrime statistics across Indian cities.
#' It includes counts of various types of cybercrimes such as personal revenge, anger, fraud, extortion,
#' causing disrepute, prank, sexual exploitation, disruption of public service, illegal drug sales, business development,
#' piracy spreading, psychological offenses, information theft, abetment to suicide, and others, along with the total number of cases.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'CyberCrime_India_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name CyberCrime_India_tbl_df
#' @format A tibble with 191 observations and 17 variables:
#' \describe{
#'   \item{City}{City name (character)}
#'   \item{Personal Revenge}{Number of cybercrime cases related to personal revenge (numeric)}
#'   \item{Anger}{Number of cybercrime cases related to anger (numeric)}
#'   \item{Fraud}{Number of fraud-related cybercrime cases (numeric)}
#'   \item{Extortion}{Number of extortion-related cybercrime cases (numeric)}
#'   \item{Causing Disrepute}{Number of cases causing disrepute (numeric)}
#'   \item{Prank}{Number of prank-related cybercrime cases (numeric)}
#'   \item{Sexual Exploitation}{Number of sexual exploitation cases (numeric)}
#'   \item{Disrupt Public Service}{Number of cases disrupting public services (numeric)}
#'   \item{Sale purchase illegal drugs}{Number of cases involving sale or purchase of illegal drugs (numeric)}
#'   \item{Developing own business}{Number of cases related to developing own business (numeric)}
#'   \item{Spreading Piracy}{Number of cases involving spreading piracy (numeric)}
#'   \item{Psycho or Pervert}{Number of psychological or pervert-related cases (numeric)}
#'   \item{Steal Information}{Number of information theft cases (numeric)}
#'   \item{Abetment to Suicide}{Number of cases of abetment to suicide (numeric)}
#'   \item{Others}{Number of other types of cybercrime cases (numeric)}
#'   \item{Total}{Total number of cybercrime cases (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/seanangelonathanael/dataset-cybercrime-in-india}
#' @usage data(CyberCrime_India_tbl_df)
#' @export
load("data/CyberCrime_India_tbl_df.rda")
NULL


#' 5G Smartphones Available in India (2022)
#'
#' This dataset, smartphones5G_tbl_df, is a tibble containing detailed information about 5G smartphones
#' available in India as of 2022. It includes product names, processor details, camera specifications,
#' display size, RAM, storage, battery, Android version, pricing from two different websites, the real price available,
#' and scores by SmartPrice. The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'smartphones5G_tbl_df' to maintain consistency with the naming
#' conventions in the IndiAPIs package. The suffix 'tbl_df' indicates that this is a tibble
#' data frame. The original content has not been modified in any way.
#'
#' @name smartphones5G_tbl_df
#' @format A tibble with 257 observations and 15 variables:
#' \describe{
#'   \item{product name}{Name of the smartphone product (character)}
#'   \item{processor name}{Name of the processor used (character)}
#'   \item{camera specs rear}{Rear camera specifications (character)}
#'   \item{camera specs front}{Front camera specifications (character)}
#'   \item{display size}{Display size specification (character)}
#'   \item{ram of phone}{RAM size specification (character)}
#'   \item{storage}{Storage capacity specification (character)}
#'   \item{battery}{Battery specification (character)}
#'   \item{android version}{Android version running on the phone (character)}
#'   \item{first site}{First website for price reference (character)}
#'   \item{price in first site}{Price listed on the first site (character)}
#'   \item{second site}{Second website for price reference (character)}
#'   \item{price in second site}{Price listed on the second site (character)}
#'   \item{real price available}{Actual available price (numeric)}
#'   \item{score by smartprice}{Score assigned by SmartPrice (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/ramjasmaurya/5g-smartphones-available-in-india}
#' @usage data(smartphones5G_tbl_df)
#' @export
load("data/smartphones5G_tbl_df.rda")
NULL







