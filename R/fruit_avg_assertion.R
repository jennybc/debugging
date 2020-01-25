dat <- read.csv("R/fruit.csv", strip.white = TRUE)

all(vapply(dat, is.numeric, logical(1)))

#+ eval = FALSE
dat <- read.csv("fruit.csv")

if (!all(vapply(dat, is.numeric, logical(1)))) {
  stop("All columns of `dat` must be numeric")
}

fruit_avg(dat, pattern = "berry")
