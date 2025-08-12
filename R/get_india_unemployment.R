# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get India's Unemployment Rate from World Bank
#'
#' Retrieves India's total unemployment rate as a percentage of the total labor force
#' for the years 2010 to 2022 using the World Bank Open Data API.
#' The indicator used is SL.UEM.TOTL.ZS.
#'
#' @return A tibble with the following columns:
#'   \itemize{
#'     \item \code{indicator}: Indicator name
#'     \item \code{country}: Country name (India)
#'     \item \code{year}: Year of the data (integer)
#'     \item \code{value}: Unemployment rate as percentage
#'   }
#'
#' @details
#' This function sends a GET request to the World Bank API.
#' If the API request fails or returns an error status code,
#' the function returns NULL with an informative message.
#'
#' @note Requires internet connection.
#'
#' @source World Bank Open Data API: \url{https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS}
#'
#' @examples
#' \dontrun{
#'   unemployment_data <- get_india_unemployment()
#'   print(unemployment_data)
#' }
#'
#' @seealso \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[dplyr]{as_tibble}}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_india_unemployment <- function() {
  url <- "https://api.worldbank.org/v2/country/IND/indicator/SL.UEM.TOTL.ZS?format=json&date=2010:2022&per_page=100"

  res <- httr::GET(url)

  if (res$status_code != 200) {
    message(paste("Error: status", res$status_code))
    return(NULL)
  }

  content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))

  if (length(content) < 2 || is.null(content[[2]])) {
    message("No data returned from the World Bank API.")
    return(NULL)
  }

  data <- content[[2]]

  df <- dplyr::as_tibble(data.frame(
    indicator = data$indicator$value,
    country = data$country$value,
    year = as.integer(data$date),
    value = data$value
  ))

  return(df)
}
