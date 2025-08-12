# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# diesel_fuelprice_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("diesel_fuelprice_tbl_df is a tibble", {
  expect_s3_class(diesel_fuelprice_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 4 columns
test_that("diesel_fuelprice_tbl_df has 4 columns", {
  expect_equal(length(diesel_fuelprice_tbl_df), 4)
})

# Test 3: Confirm it has exactly 17,235 rows
test_that("diesel_fuelprice_tbl_df has 17235 rows", {
  expect_equal(nrow(diesel_fuelprice_tbl_df), 17235)
})

# Test 4: Confirm column names are correct and in the right order
test_that("diesel_fuelprice_tbl_df has correct column names", {
  expected_names <- c("city", "date", "rate", "state")
  expect_equal(names(diesel_fuelprice_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("diesel_fuelprice_tbl_df columns have correct types", {
  expect_type(diesel_fuelprice_tbl_df[["city"]], "character")
  expect_s3_class(diesel_fuelprice_tbl_df[["date"]], "Date")
  expect_type(diesel_fuelprice_tbl_df[["rate"]], "double")
  expect_type(diesel_fuelprice_tbl_df[["state"]], "character")
})
