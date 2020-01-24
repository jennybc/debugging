x <- rnorm(5)

print(x)

# I use this file to explore / explain highlight themes
cat("Hello World\n")

fruit_avg <- function(dat, pattern) {
  cols <- grep(pattern, names(dat))
  mini_dat <- dat[ , cols]
  message("Found ", ncol(mini_dat), " fruits!")
  rowMeans(mini_dat)
}

# more regular comment
if (TRUE) {
  "true"
} else {
  "false"
}
