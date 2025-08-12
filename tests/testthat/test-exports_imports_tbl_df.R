# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# exports_imports_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("exports_imports_tbl_df is a tibble", {
  expect_s3_class(exports_imports_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 7 columns
test_that("exports_imports_tbl_df has 7 columns", {
  expect_equal(length(exports_imports_tbl_df), 7)
})

# Test 3: Confirm it has exactly 5,994 rows
test_that("exports_imports_tbl_df has 5994 rows", {
  expect_equal(nrow(exports_imports_tbl_df), 5994)
})

# Test 4: Confirm column names are correct and in the right order
test_that("exports_imports_tbl_df has correct column names", {
  expected_names <- c(
    "Country", "Export", "Import", "Total Trade",
    "Trade Balance", "Financial Year(start)", "Financial Year(end)"
  )
  expect_equal(names(exports_imports_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("exports_imports_tbl_df columns have correct types", {
  expect_type(exports_imports_tbl_df[["Country"]], "character")
  expect_type(exports_imports_tbl_df[["Export"]], "double")
  expect_type(exports_imports_tbl_df[["Import"]], "double")
  expect_type(exports_imports_tbl_df[["Total Trade"]], "double")
  expect_type(exports_imports_tbl_df[["Trade Balance"]], "double")
  expect_type(exports_imports_tbl_df[["Financial Year(start)"]], "double")
  expect_type(exports_imports_tbl_df[["Financial Year(end)"]], "character")
})
