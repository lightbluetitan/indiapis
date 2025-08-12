# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_country_info_in


library(testthat)

test_that("get_country_info_in() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_country_info_in()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("name_common", "name_official", "region", "subregion", "capital", "area", "population", "languages"))
  expect_equal(nrow(result), 1)

  expect_type(result$name_common, "character")
  expect_type(result$name_official, "character")
  expect_type(result$region, "character")
  expect_type(result$subregion, "character")
  expect_type(result$capital, "character")
  expect_type(result$area, "double")
  expect_type(result$population, "integer")
  expect_type(result$languages, "character")
})

test_that("get_country_info_in() returns correct country info for India", {
  skip_on_cran()
  result <- get_country_info_in()

  expect_equal(result$name_common, "India")
  expect_equal(result$name_official, "Republic of India")
  expect_equal(result$region, "Asia")
  expect_equal(result$subregion, "Southern Asia")
  expect_equal(result$capital, "New Delhi")
  expect_equal(result$area, 3287590)
  expect_equal(result$population, 1380004385)
  # Languages might be comma separated, check contains expected languages:
  langs <- unlist(strsplit(result$languages, ",\\s*"))
  expect_true(all(c("English", "Hindi", "Tamil") %in% langs))
})

test_that("get_country_info_in() allows for possible NAs", {
  skip_on_cran()
  result <- get_country_info_in()

  # Since this is country info, most fields are unlikely to be NA, but we allow it if API changes
  expect_true(all(!is.na(result$name_common)))
  expect_true(all(!is.na(result$name_official)))
  expect_true(all(!is.na(result$region)))
  expect_true(all(!is.na(result$subregion)))
  expect_true(all(!is.na(result$capital)))
  # area and population numeric but could theoretically be NA
  expect_true(is.na(result$area) | is.finite(result$area))
  expect_true(is.na(result$population) | (is.numeric(result$population) && result$population > 0))
  expect_true(all(!is.na(result$languages)))
})
