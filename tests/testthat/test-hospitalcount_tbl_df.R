# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# hospitalcount_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("hospitalcount_tbl_df is a tibble", {
  expect_s3_class(hospitalcount_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 4 columns
test_that("hospitalcount_tbl_df has 4 columns", {
  expect_equal(length(hospitalcount_tbl_df), 4)
})

# Test 3: Confirm it has exactly 37 rows
test_that("hospitalcount_tbl_df has 37 rows", {
  expect_equal(nrow(hospitalcount_tbl_df), 37)
})

# Test 4: Confirm column names are correct and in the right order
test_that("hospitalcount_tbl_df has correct column names", {
  expected_names <- c("States/UTs",
                      "Number of hospitals in public sector",
                      "Number of hospitals in private sector",
                      "Total number of hospitals (public+private)")
  expect_equal(names(hospitalcount_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("hospitalcount_tbl_df columns have correct types", {
  expect_type(hospitalcount_tbl_df[["States/UTs"]], "character")
  expect_type(hospitalcount_tbl_df[["Number of hospitals in public sector"]], "double")
  expect_type(hospitalcount_tbl_df[["Number of hospitals in private sector"]], "double")
  expect_type(hospitalcount_tbl_df[["Total number of hospitals (public+private)"]], "double")
})
