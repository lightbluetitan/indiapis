# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# India_Companies_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("India_Companies_tbl_df is a tibble", {
  expect_s3_class(India_Companies_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 8 columns
test_that("India_Companies_tbl_df has 8 columns", {
  expect_equal(length(India_Companies_tbl_df), 8)
})

# Test 3: Confirm it has exactly 493 rows
test_that("India_Companies_tbl_df has 493 rows", {
  expect_equal(nrow(India_Companies_tbl_df), 493)
})

# Test 4: Confirm column names are correct and in the right order
test_that("India_Companies_tbl_df has correct column names", {
  expected_names <- c("Name", "Industry", "Sector", "Headquarters",
                      "Founded", "Notes", "Private/State", "Active/Defunct")
  expect_equal(names(India_Companies_tbl_df), expected_names)
})

# Test 5: Confirm all columns are character type
test_that("India_Companies_tbl_df columns are character type", {
  for (col in names(India_Companies_tbl_df)) {
    expect_type(India_Companies_tbl_df[[col]], "character")
  }
})

