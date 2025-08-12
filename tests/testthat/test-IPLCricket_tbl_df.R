# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# IPLCricket_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with tbl_df, tbl, and data.frame classes
test_that("IPLCricket_tbl_df is a tibble", {
  expect_s3_class(IPLCricket_tbl_df, c("tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 10 columns
test_that("IPLCricket_tbl_df has 10 columns", {
  expect_equal(length(IPLCricket_tbl_df), 10)
})

# Test 3: Confirm it has exactly 8,560 rows
test_that("IPLCricket_tbl_df has 8560 rows", {
  expect_equal(nrow(IPLCricket_tbl_df), 8560)
})

# Test 4: Confirm column names are correct and in order
test_that("IPLCricket_tbl_df column names are correct", {
  expect_named(IPLCricket_tbl_df,
               c("season", "match_id", "batting_team", "bowling_team",
                 "inning", "over", "wicket", "dot_balls", "runs_per_over", "run_rate"))
})

# Test 5: Confirm column types are correct
test_that("IPLCricket_tbl_df column types are correct", {
  expect_type(IPLCricket_tbl_df$season, "double")
  expect_type(IPLCricket_tbl_df$match_id, "double")
  expect_type(IPLCricket_tbl_df$batting_team, "character")
  expect_type(IPLCricket_tbl_df$bowling_team, "character")
  expect_type(IPLCricket_tbl_df$inning, "double")
  expect_type(IPLCricket_tbl_df$over, "double")
  expect_type(IPLCricket_tbl_df$wicket, "double")
  expect_type(IPLCricket_tbl_df$dot_balls, "double")
  expect_type(IPLCricket_tbl_df$runs_per_over, "double")
  expect_type(IPLCricket_tbl_df$run_rate, "double")
})
