# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# Unicorn_startups_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("Unicorn_startups_tbl_df is a tibble", {
  expect_s3_class(Unicorn_startups_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 8 columns
test_that("Unicorn_startups_tbl_df has 8 columns", {
  expect_equal(length(Unicorn_startups_tbl_df), 8)
})

# Test 3: Confirm it has exactly 102 rows
test_that("Unicorn_startups_tbl_df has 102 rows", {
  expect_equal(nrow(Unicorn_startups_tbl_df), 102)
})

# Test 4: Confirm column names are correct and in the right order
test_that("Unicorn_startups_tbl_df has correct column names", {
  expected_names <- c(
    "No.", "Company", "Sector", "Entry Valuation^^ ($B)",
    "Valuation ($B)", "Entry", "Location", "Select Investors"
  )
  expect_equal(names(Unicorn_startups_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("Unicorn_startups_tbl_df columns have correct types", {
  expect_type(Unicorn_startups_tbl_df[["No."]], "double")
  expect_type(Unicorn_startups_tbl_df[["Company"]], "character")
  expect_type(Unicorn_startups_tbl_df[["Sector"]], "character")
  expect_type(Unicorn_startups_tbl_df[["Entry Valuation^^ ($B)"]], "double")
  expect_type(Unicorn_startups_tbl_df[["Valuation ($B)"]], "double")
  expect_type(Unicorn_startups_tbl_df[["Entry"]], "character")
  expect_type(Unicorn_startups_tbl_df[["Location"]], "character")
  expect_type(Unicorn_startups_tbl_df[["Select Investors"]], "character")
})
