# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get Country Information for India
#'
#' @description
#' Retrieves comprehensive country information for India from the REST Countries API.
#' This function fetches data including official and common names, geographical information,
#' capital, area, population, and languages.
#'
#' @return A tibble with one row containing India's country information:
#' \describe{
#'   \item{name_common}{Common name of the country}
#'   \item{name_official}{Official name of the country}
#'   \item{region}{Geographic region}
#'   \item{subregion}{Geographic subregion}
#'   \item{capital}{Capital city(ies)}
#'   \item{area}{Total area in square kilometers}
#'   \item{population}{Total population}
#'   \item{languages}{Languages spoken (comma-separated)}
#' }
#'
#' @details
#' This function makes a request to the REST Countries API v3.1 endpoint specifically
#' for India using full text search. It handles API errors gracefully and
#' returns NULL if the request fails or no data is found.
#'
#' @examples
#' \dontrun{
#' # Get India information
#' in_info <- get_country_info_in()
#' print(in_info)
#' }
#'
#' @importFrom httr GET http_error content
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#'
#' @export
get_country_info_in <- function() {
  url <- "https://restcountries.com/v3.1/name/india?fullText=true"
  response <- httr::GET(url)

  if (httr::http_error(response)) {
    message("API request failed.")
    return(NULL)
  }

  data_raw <- httr::content(response, as = "text", encoding = "UTF-8")
  data_list <- jsonlite::fromJSON(data_raw)

  if (length(data_list) == 0) {
    message("No data found for India.")
    return(NULL)
  }

  data <- data_list[1, ]  # Only one country should be returned

  tibble::tibble(
    name_common   = data$name$common,
    name_official = data$name$official,
    region        = data$region,
    subregion     = data$subregion,
    capital       = paste(data$capital, collapse = ", "),
    area          = data$area,
    population    = data$population,
    languages     = paste(unlist(data$languages), collapse = ", ")
  )
}
