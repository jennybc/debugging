# setup ----

options(width = 50)
options(error = rlang::entrace)

source("R/knitr-error-wrap.R")
dat <- read.csv("R/fruit.csv", strip.white = TRUE)
source("R/fruit_avg.R")

# first look at dat and fruit_avg(); see error ----
# series of 3 code slides
# in Keynote, position based on "black" (error) example
dat

fruit_avg(dat, pattern = "berry")

dat

fruit_avg(dat, pattern = "melon")

dat

fruit_avg(dat, pattern = "black")

# What just happened? ways to see the call stack ----
# series of 3 slides: base, rlang, RStudio
# in Keynote, position based on rlang example


fruit_avg(dat, pattern = "black")

traceback()



fruit_avg(dat, pattern = "black")

rlang::last_trace()



# Rstudio's Debug > On Error > Error Inspector
fruit_avg(dat, pattern = "black")
# screenshot!
options(error = rlang::entrace)



# How to see the state of the world(s) at the moment of failure ----
options(error = recover)

fruit_avg(dat, "black")
# interactive recover() work is beyond the reach of reprex
# have to fake these snippets by running, copy/pasting,
# tweaking text color in Keynote

# use a screenshot to convey what goes on in RStudio environment pane



# show power of browser() ----

# I recorded this with shift + command + 5, record selected part of screen
source("R/fruit_avg_browser.R")
fruit_avg(dat, "black")
# inspect mini_dat, add `drop = FALSE` on-the-fly, see success

# mention debug() ----
debug(fruit_avg)
fruit_avg(dat, "black")

# source a version of fruit_avg() that has `drop = FALSE`
source("R/fruit_avg_fixed.R")

fruit_avg(dat, "black")
