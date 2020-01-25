#+ eval = FALSE
dat <- data.frame(x = 1, y = 2)

df$x
#> Error: Can't extract `x` from `df()`.
#>   * `df()` is a function.
#> Did you mean to subset a list or a data frame?

df$x
#> Error: Can't subset a function.
#> Have you forgotten to define a variable named `df`?
