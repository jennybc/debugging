# setup ----

options(width = 37)
source("R/knitr-error-wrap.R")

# reprex that resulted from Brooke's original wild-caught puzzle
dat <- data.frame(`..1` = 1)

dplyr::mutate_all(dat, as.character)
