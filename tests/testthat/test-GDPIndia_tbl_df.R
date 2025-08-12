# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# GDPIndia_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with the correct S3 classes
test_that("GDPIndia_tbl_df is a tibble", {
  expect_s3_class(GDPIndia_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 5 columns
test_that("GDPIndia_tbl_df has 5 columns", {
  expect_equal(length(GDPIndia_tbl_df), 5)
})

# Test 3: Confirm it has exactly 63 rows
test_that("GDPIndia_tbl_df has 63 rows", {
  expect_equal(nrow(GDPIndia_tbl_df), 63)
})

# Test 4: Confirm the column names are correct and in the right order
test_that("GDPIndia_tbl_df has correct column names", {
  expected_names <- c(
    "...1",
    "India GDP - Historical Data...2",
    "India GDP - Historical Data...3",
    "India GDP - Historical Data...4",
    "India GDP - Historical Data...5"
  )
  expect_equal(names(GDPIndia_tbl_df), expected_names)
})

# Test 5: Confirm the first column is numeric type
test_that("GDPIndia_tbl_df first column is numeric", {
  expect_type(GDPIndia_tbl_df[["...1"]], "double")
})

# Test 6: Confirm the remaining four columns are character type
test_that("GDPIndia_tbl_df remaining columns are character", {
  char_cols <- c(
    "India GDP - Historical Data...2",
    "India GDP - Historical Data...3",
    "India GDP - Historical Data...4",
    "India GDP - Historical Data...5"
  )
  for (col in char_cols) {
    expect_type(GDPIndia_tbl_df[[col]], "character")
  }
})
