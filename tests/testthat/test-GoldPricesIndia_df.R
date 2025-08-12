# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# GoldPricesIndia_df

library(testthat)

# Test 1: Confirm object is a data frame
test_that("GoldPricesIndia_df is a data frame", {
  expect_s3_class(GoldPricesIndia_df, "data.frame")
})

# Test 2: Confirm it has exactly 13 columns
test_that("GoldPricesIndia_df has 13 columns", {
  expect_equal(length(GoldPricesIndia_df), 13)
})

# Test 3: Confirm it has exactly 12 observations (rows)
test_that("GoldPricesIndia_df has 12 rows", {
  expect_equal(nrow(GoldPricesIndia_df), 12)
})

# Test 4: Confirm the column names are correct
test_that("GoldPricesIndia_df has correct column names", {
  expected_names <- c(
    "Month", "Chennai_Low", "Chennai_High", "Kolkatta_Low", "Kolkatta_High",
    "Bangalore_Low", "Bangalore_High", "Madurai_Low", "Madurai_High",
    "Hyderabad_Low", "Hyderabad_High", "Delhi_Low", "Delhi_High"
  )
  expect_equal(names(GoldPricesIndia_df), expected_names)
})

# Test 5: Confirm 'Month' is character
test_that("GoldPricesIndia_df Month column is character", {
  expect_type(GoldPricesIndia_df$Month, "character")
})

# Test 6: Confirm all other columns are numeric
test_that("GoldPricesIndia_df price columns are numeric", {
  numeric_cols <- setdiff(names(GoldPricesIndia_df), "Month")
  for (col in numeric_cols) {
    expect_type(GoldPricesIndia_df[[col]], "double")
  }
})
