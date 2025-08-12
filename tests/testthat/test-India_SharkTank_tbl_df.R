# IndiAPIs - Access Indian Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# India_SharkTank_tbl_df


library(testthat)

# Test 1: Confirm object is a tibble with the correct S3 classes
test_that("India_SharkTank_tbl_df is a tibble", {
  expect_s3_class(India_SharkTank_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

# Test 2: Confirm it has exactly 28 columns
test_that("India_SharkTank_tbl_df has 28 columns", {
  expect_equal(length(India_SharkTank_tbl_df), 28)
})

# Test 3: Confirm it has 117 rows
test_that("India_SharkTank_tbl_df has 117 rows", {
  expect_equal(nrow(India_SharkTank_tbl_df), 117)
})

# Test 4: Confirm the column names are correct and in the right order
test_that("India_SharkTank_tbl_df has correct column names", {
  expected_names <- c(
    "episode_number", "pitch_number", "brand_name", "idea", "deal",
    "pitcher_ask_amount", "ask_equity", "ask_valuation", "deal_amount",
    "deal_equity", "deal_valuation", "ashneer_present", "anupam_present",
    "aman_present", "namita_present", "vineeta_present", "peyush_present",
    "ghazal_present", "ashneer_deal", "anupam_deal", "aman_deal", "namita_deal",
    "vineeta_deal", "peyush_deal", "ghazal_deal", "total_sharks_invested",
    "amount_per_shark", "equity_per_shark"
  )
  expect_equal(names(India_SharkTank_tbl_df), expected_names)
})

# Test 5: Confirm the two character columns are indeed character type
test_that("India_SharkTank_tbl_df character columns are correct", {
  char_cols <- c("brand_name", "idea")
  for (col in char_cols) {
    expect_type(India_SharkTank_tbl_df[[col]], "character")
  }
})

# Test 6: Confirm all other columns are numeric type
test_that("India_SharkTank_tbl_df numeric columns are correct", {
  numeric_cols <- setdiff(names(India_SharkTank_tbl_df), c("brand_name", "idea"))
  for (col in numeric_cols) {
    expect_type(India_SharkTank_tbl_df[[col]], "double")
  }
})
