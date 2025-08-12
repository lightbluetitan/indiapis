# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# India_census2011_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("India_census2011_tbl_df is a tibble", {
  expect_s3_class(India_census2011_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 7 columns
test_that("India_census2011_tbl_df has 7 columns", {
  expect_equal(length(India_census2011_tbl_df), 7)
})

# Test 3: Confirm it has exactly 610 rows
test_that("India_census2011_tbl_df has 610 rows", {
  expect_equal(nrow(India_census2011_tbl_df), 610)
})

# Test 4: Confirm column names are correct and in the right order
test_that("India_census2011_tbl_df has correct column names", {
  expected_names <- c(
    "Ranking", "District", "State", "Population",
    "Growth", "Sex-Ratio", "Literacy"
  )
  expect_equal(names(India_census2011_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("India_census2011_tbl_df columns have correct types", {
  expect_type(India_census2011_tbl_df[["Ranking"]], "double")
  expect_type(India_census2011_tbl_df[["District"]], "character")
  expect_type(India_census2011_tbl_df[["State"]], "character")
  expect_type(India_census2011_tbl_df[["Population"]], "double")
  expect_type(India_census2011_tbl_df[["Growth"]], "character")
  expect_type(India_census2011_tbl_df[["Sex-Ratio"]], "double")
  expect_type(India_census2011_tbl_df[["Literacy"]], "double")
})
