# setup ----

options(width = 53)
options(error = rlang::entrace)

source("R/knitr-error-wrap.R")

dat <- data.frame(x = 1, y = 2)

df$x

rlang::abort("object of type 'function' is not subsettable")

rlang::abort("You can not subset `df`, a function, with `$`")

#> Error: Can't subset a function.
#> Have you forgotten to define a variable named `df`?
