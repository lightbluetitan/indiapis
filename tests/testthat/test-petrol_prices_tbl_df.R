# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# petrol_prices_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("petrol_prices_tbl_df is a tibble", {
  expect_s3_class(petrol_prices_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 3 columns
test_that("petrol_prices_tbl_df has 3 columns", {
  expect_equal(length(petrol_prices_tbl_df), 3)
})

# Test 3: Confirm it has exactly 1024 rows
test_that("petrol_prices_tbl_df has 1024 rows", {
  expect_equal(nrow(petrol_prices_tbl_df), 1024)
})

# Test 4: Confirm column names are correct and in the right order
test_that("petrol_prices_tbl_df has correct column names", {
  expected_names <- c("city", "date", "rate")
  expect_equal(names(petrol_prices_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("petrol_prices_tbl_df columns have correct types", {
  expect_type(petrol_prices_tbl_df[["city"]], "character")
  expect_s3_class(petrol_prices_tbl_df[["date"]], "Date")
  expect_type(petrol_prices_tbl_df[["rate"]], "double")
})
