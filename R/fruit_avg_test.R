# setup ----

options(width = 50)
options(error = rlang::entrace)

source("R/knitr-error-wrap.R")
source("R/fruit_avg_fixed.R")

library(testthat)

#+ eval = FALSE
# https://github.com/OWNER/REPO/issues/666
test_that("fruit_avg() works for 0, 1, >=2 matches", {
  dat <- data.frame(a = 1:2, ab = 3:4, row.names = c("one", "two"))
  expect_identical(fruit_avg(dat, "abc"), c(one = NaN, two = NaN))
  expect_identical(fruit_avg(dat,  "ab"), c(one = 3,   two = 4))
  expect_identical(fruit_avg(dat,   "a"), c(one = 2,   two = 3))
})
