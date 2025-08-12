# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# DelhiPotatoPrices_ts

library(testthat)

# Test 1: Confirm object is of class ts
test_that("DelhiPotatoPrices_ts is a time series object", {
  expect_s3_class(DelhiPotatoPrices_ts, "ts")
})

# Test 2: Confirm the length is exactly 127
test_that("DelhiPotatoPrices_ts has 127 observations", {
  expect_equal(length(DelhiPotatoPrices_ts), 127)
})

# Test 3: Confirm it has column name 'Delhi'
test_that("DelhiPotatoPrices_ts has column name Delhi", {
  expect_equal(colnames(DelhiPotatoPrices_ts), "Delhi")
})

# Test 4: Confirm start, end, and frequency attributes
test_that("DelhiPotatoPrices_ts start, end, and frequency are correct", {
  expect_equal(start(DelhiPotatoPrices_ts)[1], 1)
  expect_equal(end(DelhiPotatoPrices_ts)[1], 127)
  expect_equal(frequency(DelhiPotatoPrices_ts), 1)
})

# Test 5: Confirm data is numeric
test_that("DelhiPotatoPrices_ts data is numeric", {
  expect_type(as.numeric(DelhiPotatoPrices_ts), "double")
})
