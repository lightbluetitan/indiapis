# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# IndiaLandReforms_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("IndiaLandReforms_df is a data.frame", {
  expect_s3_class(IndiaLandReforms_df, "data.frame")
  expect_false("tbl_df" %in% class(IndiaLandReforms_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 32 columns
test_that("IndiaLandReforms_df has 32 columns", {
  expect_equal(length(IndiaLandReforms_df), 32)
})

# Test 3: Confirm it has exactly 2670 rows
test_that("IndiaLandReforms_df has 2670 rows", {
  expect_equal(nrow(IndiaLandReforms_df), 2670)
})

# Test 4: Confirm column names are correct and in order
test_that("IndiaLandReforms_df has correct column names", {
  expect_named(IndiaLandReforms_df, c(
    "mouza", "year", "district", "rplacul", "rpdrhh", "rblacul", "rbgdrrghh", "election",
    "preelect", "edwalfco", "erlesscu", "ermgcu", "ersmcu", "ermdcu", "ercusmol", "ercubgol",
    "erillnb", "erlow", "ratleft0", "dwalfco", "inflat", "smfempyv", "incseats", "lfseats",
    "inflflag", "inclflag", "lflflag", "ratleft", "infiw", "infumme", "infal", "gp"
  ))
})

# Test 5: Confirm column types are correct
test_that("IndiaLandReforms_df columns have correct types", {
  expect_type(IndiaLandReforms_df$mouza, "integer")
  expect_type(IndiaLandReforms_df$year, "integer")
  expect_type(IndiaLandReforms_df$district, "integer")
  expect_type(IndiaLandReforms_df$rplacul, "double")
  expect_type(IndiaLandReforms_df$rpdrhh, "double")
  expect_type(IndiaLandReforms_df$rblacul, "double")
  expect_type(IndiaLandReforms_df$rbgdrrghh, "double")
  expect_type(IndiaLandReforms_df$election, "integer")
  expect_type(IndiaLandReforms_df$preelect, "integer")
  expect_type(IndiaLandReforms_df$edwalfco, "double")
  expect_type(IndiaLandReforms_df$erlesscu, "double")
  expect_type(IndiaLandReforms_df$ermgcu, "double")
  expect_type(IndiaLandReforms_df$ersmcu, "double")
  expect_type(IndiaLandReforms_df$ermdcu, "double")
  expect_type(IndiaLandReforms_df$ercusmol, "double")
  expect_type(IndiaLandReforms_df$ercubgol, "double")
  expect_type(IndiaLandReforms_df$erillnb, "double")
  expect_type(IndiaLandReforms_df$erlow, "double")
  expect_type(IndiaLandReforms_df$ratleft0, "double")
  expect_type(IndiaLandReforms_df$dwalfco, "double")
  expect_type(IndiaLandReforms_df$inflat, "double")
  expect_type(IndiaLandReforms_df$smfempyv, "double")
  expect_type(IndiaLandReforms_df$incseats, "double")
  expect_type(IndiaLandReforms_df$lfseats, "double")
  expect_type(IndiaLandReforms_df$inflflag, "double")
  expect_type(IndiaLandReforms_df$inclflag, "double")
  expect_type(IndiaLandReforms_df$lflflag, "double")
  expect_type(IndiaLandReforms_df$ratleft, "double")
  expect_type(IndiaLandReforms_df$infiw, "double")
  expect_type(IndiaLandReforms_df$infumme, "double")
  expect_type(IndiaLandReforms_df$infal, "double")
  expect_type(IndiaLandReforms_df$gp, "integer")
})
