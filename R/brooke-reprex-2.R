# setup ----

options(width = 37)
source("R/knitr-error-wrap.R")

# reprex that resulted from Brooke's original wild-caught puzzle

#+ edit-backtrace, include = FALSE
# reprex is currently in flux re: rlang backtrace options, so I'm taking
# explicit control
# either of these can achieve what I want
options(rlang_force_unhandled_error = FALSE)
#options(rlang_backtrace_on_error = "none")

#+ body, include = TRUE
dat <- data.frame(`..1` = 1)

dplyr::mutate_all(dat, as.character)
