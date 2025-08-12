# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# road_population_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("road_population_tbl_df is a tibble", {
  expect_s3_class(road_population_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 27 columns
test_that("road_population_tbl_df has 27 columns", {
  expect_equal(length(road_population_tbl_df), 27)
})

# Test 3: Confirm it has exactly 36 rows
test_that("road_population_tbl_df has 36 rows", {
  expect_equal(nrow(road_population_tbl_df), 36)
})

# Test 4: Confirm column names are correct and in the right order
test_that("road_population_tbl_df has correct column names", {
  expected_names <- c(
    "Name of the States",
    "National Highways",
    "State Highways",
    "District Roads",
    "Rural Roads",
    "Urban roads",
    "Project Roads",
    "Total road Length",
    "Total Area",
    "Urban Road density",
    "Rural Road density",
    "Entire State Road length per 1000 sq km",
    "Urban Road lngth per 1000 sq km",
    "Rural Road lngth per 1000 sq km",
    "Road Density",
    "Road Density per 1000 Sq. Km - National Highways",
    "Road Density per 1000 Sq. Km - State Highways",
    "Road Density per 1000 Sq. Km - District Roads",
    "Road Density per 1000 Sq. Km - Rural Roads",
    "Road Density per 1000 Sq. Km - Urban roads",
    "Road Density per 1000 Sq. Km - Project Roads",
    "Area",
    "Rural Area (2011 census)",
    "Urban Area (2011 census)",
    "Rural Pop (2011 census)",
    "Urban Pop (2011 census)",
    "Total  Population"
  )
  expect_equal(names(road_population_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("road_population_tbl_df columns have correct types", {
  expect_type(road_population_tbl_df[["Name of the States"]], "character")
  numeric_columns <- setdiff(names(road_population_tbl_df), "Name of the States")
  for (col in numeric_columns) {
    expect_type(road_population_tbl_df[[col]], "double")
  }
})
