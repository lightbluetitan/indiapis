# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# ButterflySpecies_df


library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("ButterflySpecies_df is a data.frame", {
  expect_s3_class(ButterflySpecies_df, "data.frame")
  expect_false("tbl_df" %in% class(ButterflySpecies_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 9 columns
test_that("ButterflySpecies_df has 9 columns", {
  expect_equal(length(ButterflySpecies_df), 9)
})

# Test 3: Confirm it has exactly 44 rows
test_that("ButterflySpecies_df has 44 rows", {
  expect_equal(nrow(ButterflySpecies_df), 44)
})

# Test 4: Confirm column names are correct and in order
test_that("ButterflySpecies_df has correct column names", {
  expect_named(ButterflySpecies_df, c(
    "Serial_Number", "Area", "Locality", "Total_Species_count",
    "Skippers", "Swallow_tails", "Whites_Yellows", "Blues", "Brush_Footed"
  ))
})

# Test 5: Confirm column types are correct
test_that("ButterflySpecies_df columns have correct types", {
  expect_type(ButterflySpecies_df$Serial_Number, "integer")
  expect_s3_class(ButterflySpecies_df$Area, "factor")
  expect_s3_class(ButterflySpecies_df$Locality, "factor")
  expect_type(ButterflySpecies_df$Total_Species_count, "integer")
  expect_type(ButterflySpecies_df$Skippers, "integer")
  expect_type(ButterflySpecies_df$Swallow_tails, "integer")
  expect_type(ButterflySpecies_df$Whites_Yellows, "integer")
  expect_type(ButterflySpecies_df$Blues, "integer")
  expect_type(ButterflySpecies_df$Brush_Footed, "integer")
})
