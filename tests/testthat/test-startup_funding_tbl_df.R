# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# startup_funding_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble (inherits from data.frame and tbl_df)
test_that("startup_funding_tbl_df is a tibble", {
  expect_s3_class(startup_funding_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 10 columns
test_that("startup_funding_tbl_df has 10 columns", {
  expect_equal(length(startup_funding_tbl_df), 10)
})

# Test 3: Confirm it has 3,044 rows
test_that("startup_funding_tbl_df has 3044 rows", {
  expect_equal(nrow(startup_funding_tbl_df), 3044)
})

# Test 4: Confirm the column names are correct
test_that("startup_funding_tbl_df has correct column names", {
  expected_names <- c(
    "Sr No", "Date dd/mm/yyyy", "Startup Name", "Industry Vertical", "SubVertical",
    "City  Location", "Investors Name", "InvestmentnType", "Amount in USD", "Remarks"
  )
  expect_equal(names(startup_funding_tbl_df), expected_names)
})

# Test 5: Confirm 'Sr No' is numeric
test_that("startup_funding_tbl_df 'Sr No' column is numeric", {
  expect_type(startup_funding_tbl_df$`Sr No`, "double")
})

# Test 6: Confirm correct data types for other columns
test_that("startup_funding_tbl_df other columns have correct types", {
  char_cols <- c(
    "Date dd/mm/yyyy", "Startup Name", "Industry Vertical", "SubVertical",
    "City  Location", "Investors Name", "InvestmentnType", "Amount in USD", "Remarks"
  )
  for (col in char_cols) {
    expect_type(startup_funding_tbl_df[[col]], "character")
  }
})
