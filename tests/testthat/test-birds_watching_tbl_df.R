# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# birds_watching_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("birds_watching_tbl_df is a tibble", {
  expect_s3_class(birds_watching_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 4 columns
test_that("birds_watching_tbl_df has 4 columns", {
  expect_equal(length(birds_watching_tbl_df), 4)
})

# Test 3: Confirm it has exactly 490 rows
test_that("birds_watching_tbl_df has 490 rows", {
  expect_equal(nrow(birds_watching_tbl_df), 490)
})

# Test 4: Confirm column names are correct and in the right order
test_that("birds_watching_tbl_df has correct column names", {
  expected_names <- c(
    "name", "scientific name", "last observation", "total observations"
  )
  expect_equal(names(birds_watching_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("birds_watching_tbl_df columns have correct types", {
  expect_type(birds_watching_tbl_df[["name"]], "character")
  expect_type(birds_watching_tbl_df[["scientific name"]], "character")
  expect_type(birds_watching_tbl_df[["last observation"]], "character")
  expect_type(birds_watching_tbl_df[["total observations"]], "double")
})
