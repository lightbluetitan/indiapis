# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# indianPopulation_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble (and a data.frame)
test_that("indianPopulation_tbl_df is a tibble", {
  expect_s3_class(indianPopulation_tbl_df, "tbl_df")
  expect_s3_class(indianPopulation_tbl_df, "tbl")
  expect_s3_class(indianPopulation_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 8 columns
test_that("indianPopulation_tbl_df has 8 columns", {
  expect_equal(length(indianPopulation_tbl_df), 8)
})

# Test 3: Confirm it has exactly 36 rows
test_that("indianPopulation_tbl_df has 36 rows", {
  expect_equal(nrow(indianPopulation_tbl_df), 36)
})

# Test 4: Confirm column names are correct and in order
test_that("indianPopulation_tbl_df has correct column names", {
  expect_named(indianPopulation_tbl_df, c(
    "code", "abbr", "state", "pop_1901", "pop_1951", "pop_2011", "pop_2023", "pop_2024"
  ))
})

# Test 5: Confirm column types are correct
test_that("indianPopulation_tbl_df columns have correct types", {
  expect_type(indianPopulation_tbl_df$code, "double")
  expect_type(indianPopulation_tbl_df$abbr, "character")
  expect_type(indianPopulation_tbl_df$state, "character")
  expect_type(indianPopulation_tbl_df$pop_1901, "double")
  expect_type(indianPopulation_tbl_df$pop_1951, "double")
  expect_type(indianPopulation_tbl_df$pop_2011, "double")
  expect_type(indianPopulation_tbl_df$pop_2023, "double")
  expect_type(indianPopulation_tbl_df$pop_2024, "double")
})
