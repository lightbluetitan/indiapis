# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' View Available Datasets in IndiAPIs
#'
#' This function lists all datasets available in the 'IndiAPIs' package.
#' If the 'IndiAPIs' package is not loaded, it stops and shows an error message.
#' If no datasets are available, it returns a message and an empty vector.
#'
#' @return A character vector with the names of the available datasets.
#'         If no datasets are found, it returns an empty character vector.
#' @examples
#' if (requireNamespace("IndiAPIs", quietly = TRUE)) {
#'   library(IndiAPIs)
#'   view_datasets_IndiAPIs()
#' }
#' @export
view_datasets_IndiAPIs <- function() {
  # Check if the package is loaded
  if (!"IndiAPIs" %in% .packages()) {
    stop("The 'IndiAPIs' package must be loaded to view its datasets.")
  }

  # Extract dataset information
  datasets_info <- utils::data(package = "IndiAPIs")$results

  # Check if there are datasets available
  if (nrow(datasets_info) == 0) {
    message("No datasets are currently available in the 'IndiAPIs' package.")
    return(character(0))
  }

  # Extract dataset names
  datasets <- datasets_info[, "Item"]

  # Display the message with available datasets
  message("Datasets available in the 'IndiAPIs' package:")

  # Return a vector of datasets without printing to the console
  return(datasets)
}
