# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# BirthDeathRates_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("BirthDeathRates_df is a data.frame", {
  expect_s3_class(BirthDeathRates_df, "data.frame")
  expect_false("tbl_df" %in% class(BirthDeathRates_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 3 columns
test_that("BirthDeathRates_df has 3 columns", {
  expect_equal(length(BirthDeathRates_df), 3)
})

# Test 3: Confirm it has exactly 27 rows
test_that("BirthDeathRates_df has 27 rows", {
  expect_equal(nrow(BirthDeathRates_df), 27)
})

# Test 4: Confirm column names are correct and in order
test_that("BirthDeathRates_df has correct column names", {
  expect_named(BirthDeathRates_df, c("Year", "Birth.rate", "death.rate"))
})

# Test 5: Confirm column types are correct
test_that("BirthDeathRates_df columns have correct types", {
  expect_s3_class(BirthDeathRates_df$Year, "factor")
  expect_type(BirthDeathRates_df$Birth.rate, "double")
  expect_type(BirthDeathRates_df$death.rate, "double")
})
