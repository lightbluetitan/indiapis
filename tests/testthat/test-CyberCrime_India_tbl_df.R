# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# CyberCrime_India_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("CyberCrime_India_tbl_df is a tibble", {
  expect_s3_class(CyberCrime_India_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 17 columns
test_that("CyberCrime_India_tbl_df has 17 columns", {
  expect_equal(length(CyberCrime_India_tbl_df), 17)
})

# Test 3: Confirm it has exactly 191 rows
test_that("CyberCrime_India_tbl_df has 191 rows", {
  expect_equal(nrow(CyberCrime_India_tbl_df), 191)
})

# Test 4: Confirm column names are correct and in the right order
test_that("CyberCrime_India_tbl_df has correct column names", {
  expected_names <- c(
    "City", "Personal Revenge", "Anger", "Fraud", "Extortion", "Causing Disrepute",
    "Prank", "Sexual Exploitation", "Disrupt Public Service", "Sale purchase illegal drugs",
    "Developing own business", "Spreading Piracy", "Psycho or Pervert",
    "Steal Information", "Abetment to Suicide", "Others", "Total"
  )
  expect_equal(names(CyberCrime_India_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("CyberCrime_India_tbl_df columns have correct types", {
  expect_type(CyberCrime_India_tbl_df[["City"]], "character")

  numeric_columns <- setdiff(names(CyberCrime_India_tbl_df), "City")
  for (col in numeric_columns) {
    expect_type(CyberCrime_India_tbl_df[[col]], "double")
  }
})
