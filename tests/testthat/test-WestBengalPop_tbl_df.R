# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# WestBengalPop_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble (and a data.frame)
test_that("WestBengalPop_tbl_df is a tibble", {
  expect_s3_class(WestBengalPop_tbl_df, "tbl_df")
  expect_s3_class(WestBengalPop_tbl_df, "tbl")
  expect_s3_class(WestBengalPop_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 8 columns
test_that("WestBengalPop_tbl_df has 8 columns", {
  expect_equal(length(WestBengalPop_tbl_df), 8)
})

# Test 3: Confirm it has exactly 23 rows
test_that("WestBengalPop_tbl_df has 23 rows", {
  expect_equal(nrow(WestBengalPop_tbl_df), 23)
})

# Test 4: Confirm column names are correct and in order
test_that("WestBengalPop_tbl_df has correct column names", {
  expect_named(WestBengalPop_tbl_df, c(
    "code", "abbr", "district", "pop_2011", "pop_increase_2011",
    "sex_ratio_2011", "literacy_per_2011", "density_2011"
  ))
})

# Test 5: Confirm column types are correct
test_that("WestBengalPop_tbl_df columns have correct types", {
  expect_type(WestBengalPop_tbl_df$code, "double")
  expect_type(WestBengalPop_tbl_df$abbr, "character")
  expect_type(WestBengalPop_tbl_df$district, "character")
  expect_type(WestBengalPop_tbl_df$pop_2011, "double")
  expect_type(WestBengalPop_tbl_df$pop_increase_2011, "double")
  expect_type(WestBengalPop_tbl_df$sex_ratio_2011, "double")
  expect_type(WestBengalPop_tbl_df$literacy_per_2011, "double")
  expect_type(WestBengalPop_tbl_df$density_2011, "double")
})
