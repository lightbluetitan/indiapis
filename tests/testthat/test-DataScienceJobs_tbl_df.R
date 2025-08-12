# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# DataScienceJobs_tbl_df

library(testthat)

# Test 1: Confirm object is a tibble with correct S3 classes
test_that("DataScienceJobs_tbl_df is a tibble", {
  expect_s3_class(DataScienceJobs_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 8 columns
test_that("DataScienceJobs_tbl_df has 8 columns", {
  expect_equal(length(DataScienceJobs_tbl_df), 8)
})

# Test 3: Confirm it has exactly 1,602 rows
test_that("DataScienceJobs_tbl_df has 1602 rows", {
  expect_equal(nrow(DataScienceJobs_tbl_df), 1602)
})

# Test 4: Confirm column names are correct and in the right order
test_that("DataScienceJobs_tbl_df has correct column names", {
  expected_names <- c("...1", "company_name", "job_title", "min_experience",
                      "avg_salary", "min_salary", "max_salary", "num_of_salaries")
  expect_equal(names(DataScienceJobs_tbl_df), expected_names)
})

# Test 5: Confirm column types are as expected
test_that("DataScienceJobs_tbl_df has correct column types", {
  expect_type(DataScienceJobs_tbl_df[["...1"]], "double")
  expect_type(DataScienceJobs_tbl_df[["company_name"]], "character")
  expect_type(DataScienceJobs_tbl_df[["job_title"]], "character")
  expect_type(DataScienceJobs_tbl_df[["min_experience"]], "double")
  expect_type(DataScienceJobs_tbl_df[["avg_salary"]], "double")
  expect_type(DataScienceJobs_tbl_df[["min_salary"]], "double")
  expect_type(DataScienceJobs_tbl_df[["max_salary"]], "double")
  expect_type(DataScienceJobs_tbl_df[["num_of_salaries"]], "double")
})
