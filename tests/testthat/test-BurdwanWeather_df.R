# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# BurdwanWeather_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("BurdwanWeather_df is a data.frame", {
  expect_s3_class(BurdwanWeather_df, "data.frame")
  expect_false("tbl_df" %in% class(BurdwanWeather_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 7 columns
test_that("BurdwanWeather_df has 7 columns", {
  expect_equal(length(BurdwanWeather_df), 7)
})

# Test 3: Confirm it has exactly 741 rows
test_that("BurdwanWeather_df has 741 rows", {
  expect_equal(nrow(BurdwanWeather_df), 741)
})

# Test 4: Confirm column names are correct and in order
test_that("BurdwanWeather_df has correct column names", {
  expect_named(BurdwanWeather_df, c(
    "Date", "SMW", "Week", "Max.Temperature",
    "Min.Temperature", "Precipitation", "Relative.Humidity"
  ))
})

# Test 5: Confirm column types are correct
test_that("BurdwanWeather_df columns have correct types", {
  expect_type(BurdwanWeather_df$Date, "character")
  expect_type(BurdwanWeather_df$SMW, "integer")
  expect_type(BurdwanWeather_df$Week, "integer")
  expect_type(BurdwanWeather_df$`Max.Temperature`, "double")
  expect_type(BurdwanWeather_df$`Min.Temperature`, "double")
  expect_type(BurdwanWeather_df$Precipitation, "double")
  expect_type(BurdwanWeather_df$`Relative.Humidity`, "double")
})
