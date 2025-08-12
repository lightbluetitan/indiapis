# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# rainfall_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with the correct S3 classes
test_that("rainfall_tbl_df is a tibble", {
  expect_s3_class(rainfall_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 7 columns
test_that("rainfall_tbl_df has 7 columns", {
  expect_equal(length(rainfall_tbl_df), 7)
})

# Test 3: Confirm it has exactly 4,332 rows
test_that("rainfall_tbl_df has 4332 rows", {
  expect_equal(nrow(rainfall_tbl_df), 4332)
})

# Test 4: Confirm the column names are correct and in the right order
test_that("rainfall_tbl_df has correct column names", {
  expected_names <- c("subdivision", "YEAR", "JUN", "JUL", "AUG", "SEP", "JUN-SEP")
  expect_equal(names(rainfall_tbl_df), expected_names)
})

# Test 5: Confirm first column is character type
test_that("rainfall_tbl_df first column is character", {
  expect_type(rainfall_tbl_df[["subdivision"]], "character")
})

# Test 6: Confirm YEAR column is numeric type
test_that("rainfall_tbl_df YEAR column is numeric", {
  expect_type(rainfall_tbl_df[["YEAR"]], "double")
})

# Test 7: Confirm remaining monthly rainfall columns are numeric
test_that("rainfall_tbl_df rainfall columns are numeric", {
  num_cols <- c("JUN", "JUL", "AUG", "SEP", "JUN-SEP")
  for (col in num_cols) {
    expect_type(rainfall_tbl_df[[col]], "double")
  }
})
