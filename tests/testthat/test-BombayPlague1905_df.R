# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# BombayPlague1905_df

library(testthat)

# Test 1: Confirm the object is a data.frame
test_that("BombayPlague1905_df is a data.frame", {
  expect_s3_class(BombayPlague1905_df, "data.frame")
})

# Test 2: Confirm it has exactly 2 columns
test_that("BombayPlague1905_df has 2 columns", {
  expect_equal(length(BombayPlague1905_df), 2)
})

# Test 3: Confirm it has exactly 32 rows
test_that("BombayPlague1905_df has 32 rows", {
  expect_equal(nrow(BombayPlague1905_df), 32)
})

# Test 4: Confirm column names are correct and in order
test_that("BombayPlague1905_df has correct column names", {
  expect_named(BombayPlague1905_df, c("Week", "CumulativeDeaths"))
})

# Test 5: Confirm column types are correct
test_that("BombayPlague1905_df columns have correct types", {
  expect_type(BombayPlague1905_df$Week, "integer")
  expect_type(BombayPlague1905_df$CumulativeDeaths, "integer")
})
