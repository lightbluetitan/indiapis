# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# Top500Cities_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("Top500Cities_tbl_df is a tibble", {
  expect_s3_class(Top500Cities_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 22 columns
test_that("Top500Cities_tbl_df has 22 columns", {
  expect_equal(length(Top500Cities_tbl_df), 22)
})

# Test 3: Confirm it has exactly 493 rows
test_that("Top500Cities_tbl_df has 493 rows", {
  expect_equal(nrow(Top500Cities_tbl_df), 493)
})

# Test 4: Confirm column names are correct and in the right order
test_that("Top500Cities_tbl_df has correct column names", {
  expected_names <- c(
    "name_of_city", "state_code", "state_name", "dist_code",
    "population_total", "population_male", "population_female",
    "0-6_population_total", "0-6_population_male", "0-6_population_female",
    "literates_total", "literates_male", "literates_female",
    "sex_ratio", "child_sex_ratio",
    "effective_literacy_rate_total", "effective_literacy_rate_male", "effective_literacy_rate_female",
    "location", "total_graduates", "male_graduates", "female_graduates"
  )
  expect_equal(names(Top500Cities_tbl_df), expected_names)
})

# Test 5: Confirm correct data types for each column
test_that("Top500Cities_tbl_df columns have correct types", {
  expect_type(Top500Cities_tbl_df[["name_of_city"]], "character")
  expect_type(Top500Cities_tbl_df[["state_code"]], "double")
  expect_type(Top500Cities_tbl_df[["state_name"]], "character")
  expect_type(Top500Cities_tbl_df[["dist_code"]], "double")
  expect_type(Top500Cities_tbl_df[["population_total"]], "double")
  expect_type(Top500Cities_tbl_df[["population_male"]], "double")
  expect_type(Top500Cities_tbl_df[["population_female"]], "double")
  expect_type(Top500Cities_tbl_df[["0-6_population_total"]], "double")
  expect_type(Top500Cities_tbl_df[["0-6_population_male"]], "double")
  expect_type(Top500Cities_tbl_df[["0-6_population_female"]], "double")
  expect_type(Top500Cities_tbl_df[["literates_total"]], "double")
  expect_type(Top500Cities_tbl_df[["literates_male"]], "double")
  expect_type(Top500Cities_tbl_df[["literates_female"]], "double")
  expect_type(Top500Cities_tbl_df[["sex_ratio"]], "double")
  expect_type(Top500Cities_tbl_df[["child_sex_ratio"]], "double")
  expect_type(Top500Cities_tbl_df[["effective_literacy_rate_total"]], "double")
  expect_type(Top500Cities_tbl_df[["effective_literacy_rate_male"]], "double")
  expect_type(Top500Cities_tbl_df[["effective_literacy_rate_female"]], "double")
  expect_type(Top500Cities_tbl_df[["location"]], "character")
  expect_type(Top500Cities_tbl_df[["total_graduates"]], "double")
  expect_type(Top500Cities_tbl_df[["male_graduates"]], "double")
  expect_type(Top500Cities_tbl_df[["female_graduates"]], "double")
})
