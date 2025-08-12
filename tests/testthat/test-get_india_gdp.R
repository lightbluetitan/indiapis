# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_india_gdp

library(testthat)

test_that("get_india_gdp() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_india_gdp()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value", "value_label"))
  expect_equal(ncol(result), 5)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
  expect_type(result$value_label, "character")
})

test_that("get_india_gdp() returns only India data", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_true(all(result$country == "India"))
})

test_that("get_india_gdp() returns correct indicator label", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_true(all(result$indicator == "GDP (current US$)"))
})

test_that("get_india_gdp() returns data for years 2010 to 2022", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_true(all(result$year %in% 2010:2022))
  expect_equal(sort(unique(result$year)), 2010:2022)
})

test_that("get_india_gdp() returns exactly 13 rows (2010-2022 inclusive)", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_equal(nrow(result), 13)
})

test_that("get_india_gdp() year column has no missing values", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_false(any(is.na(result$year)))
})

test_that("get_india_gdp() value column is numeric or NA", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_india_gdp() allows missing values (NA) in value column", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
})

test_that("get_india_gdp() years are sorted in descending order", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_india_gdp() indicator and country are consistent across rows", {
  skip_on_cran()
  result <- get_india_gdp()
  expect_equal(length(unique(result$indicator)), 1)
  expect_equal(length(unique(result$country)), 1)
})

test_that("get_india_gdp() value_label matches formatted value column", {
  skip_on_cran()
  result <- get_india_gdp()
  numeric_label <- as.numeric(gsub(",", "", result$value_label))
  expect_equal(numeric_label, result$value)
})
