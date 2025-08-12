# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_india_population

library(testthat)

test_that("get_india_population() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_india_population()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value", "value_label"))
  expect_equal(ncol(result), 5)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(is.numeric(result$value) || is.integer(result$value))
  expect_type(result$value_label, "character")
})

test_that("get_india_population() returns only India data", {
  skip_on_cran()
  result <- get_india_population()
  expect_true(all(result$country == "India"))
})

test_that("get_india_population() returns correct indicator label", {
  skip_on_cran()
  result <- get_india_population()
  expect_true(all(result$indicator == "Population, total"))
})

test_that("get_india_population() returns data for years 2010 to 2022", {
  skip_on_cran()
  result <- get_india_population()
  expect_true(all(result$year %in% 2010:2022))
  expect_equal(sort(unique(result$year)), 2010:2022)
})

test_that("get_india_population() returns exactly 13 rows (2010-2022 inclusive)", {
  skip_on_cran()
  result <- get_india_population()
  expect_equal(nrow(result), 13)
})

test_that("get_india_population() year column has no missing values", {
  skip_on_cran()
  result <- get_india_population()
  expect_false(any(is.na(result$year)))
})

test_that("get_india_population() value column has no missing or infinite values", {
  skip_on_cran()
  result <- get_india_population()
  expect_false(any(is.na(result$value)))
  expect_true(all(is.finite(result$value)))
})

test_that("get_india_population() value_label matches formatted value", {
  skip_on_cran()
  result <- get_india_population()
  expect_equal(result$value_label, scales::comma(result$value, accuracy = 1))
})

test_that("get_india_population() years are sorted in descending order", {
  skip_on_cran()
  result <- get_india_population()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_india_population() indicator and country are consistent across rows", {
  skip_on_cran()
  result <- get_india_population()
  expect_equal(length(unique(result$indicator)), 1)
  expect_equal(length(unique(result$country)), 1)
})
