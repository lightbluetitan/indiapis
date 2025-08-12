# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# IndiaPopulation_dt

library(testthat)

# Test 1: Confirm the object is a data.table and also a data.frame
test_that("IndiaPopulation_dt is a data.table and data.frame", {
  expect_s3_class(IndiaPopulation_dt, "data.table")
  expect_s3_class(IndiaPopulation_dt, "data.frame")
})

# Test 2: Confirm it has exactly 3 columns
test_that("IndiaPopulation_dt has 3 columns", {
  expect_equal(length(IndiaPopulation_dt), 3)
})

# Test 3: Confirm it has exactly 39 rows
test_that("IndiaPopulation_dt has 39 rows", {
  expect_equal(nrow(IndiaPopulation_dt), 39)
})

# Test 4: Confirm column names are correct and in order
test_that("IndiaPopulation_dt has correct column names", {
  expect_named(IndiaPopulation_dt, c("place", "abbrev", "population"))
})

# Test 5: Confirm column types are correct
test_that("IndiaPopulation_dt columns have correct types", {
  expect_type(IndiaPopulation_dt$place, "character")
  expect_type(IndiaPopulation_dt$abbrev, "character")
  expect_type(IndiaPopulation_dt$population, "double")
})
