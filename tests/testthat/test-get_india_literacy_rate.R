# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_india_literacy_rate

library(testthat)

test_that("get_india_literacy_rate() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_india_literacy_rate()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))
  expect_equal(ncol(result), 4)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  # value may contain NAs, but should be integer or numeric type
  expect_true(is.numeric(result$value) || is.integer(result$value))
})

test_that("get_india_literacy_rate() returns only India data", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_true(all(result$country == "India"))
})

test_that("get_india_literacy_rate() returns correct indicator label", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_true(all(result$indicator == "Literacy rate, adult total (% of people ages 15 and above)"))
})

test_that("get_india_literacy_rate() returns data for years 2010 to 2022", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_true(all(result$year %in% 2010:2022))
  expect_equal(sort(unique(result$year)), 2010:2022)
})

test_that("get_india_literacy_rate() returns exactly 13 rows (2010-2022 inclusive)", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_equal(nrow(result), 13)
})

test_that("get_india_literacy_rate() year column has no missing values", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_false(any(is.na(result$year)))
})

test_that("get_india_literacy_rate() value column can have NAs but no non-finite values", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  # Allow NAs, but values must be numeric and finite if not NA
  expect_true(all(is.na(result$value) | is.finite(result$value)))
})

test_that("get_india_literacy_rate() years are sorted in descending order", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_india_literacy_rate() indicator and country are consistent across rows", {
  skip_on_cran()
  result <- get_india_literacy_rate()
  expect_equal(length(unique(result$indicator)), 1)
  expect_equal(length(unique(result$country)), 1)
})


