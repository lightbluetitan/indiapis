# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# smartphones5G_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("smartphones5G_tbl_df is a tibble", {
  expect_s3_class(smartphones5G_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 15 columns
test_that("smartphones5G_tbl_df has 15 columns", {
  expect_equal(length(smartphones5G_tbl_df), 15)
})

# Test 3: Confirm it has exactly 257 rows
test_that("smartphones5G_tbl_df has 257 rows", {
  expect_equal(nrow(smartphones5G_tbl_df), 257)
})

# Test 4: Confirm column names are correct and in the right order
test_that("smartphones5G_tbl_df has correct column names", {
  expected_names <- c(
    "product name", "processor name", "camera specs rear", "camera specs front",
    "display size", "ram of phone", "storage", "battery", "android version",
    "first site", "price in first site", "second site", "price in second site",
    "real price available", "score by smartprice"
  )
  expect_equal(names(smartphones5G_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("smartphones5G_tbl_df columns have correct types", {
  char_columns <- c(
    "product name", "processor name", "camera specs rear", "camera specs front",
    "display size", "ram of phone", "storage", "battery", "android version",
    "first site", "price in first site", "second site", "price in second site"
  )
  num_columns <- c("real price available", "score by smartprice")

  for (col in char_columns) {
    expect_type(smartphones5G_tbl_df[[col]], "character")
  }
  for (col in num_columns) {
    expect_type(smartphones5G_tbl_df[[col]], "double")
  }
})
