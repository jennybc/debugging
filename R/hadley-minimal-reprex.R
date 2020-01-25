# more minimal reprex NOT advice user:tidyverse user:r-lib user:hadley involves:hadley is:issue
# https://github.com/search?o=desc&q=more+minimal+reprex+NOT+advice+user%3Atidyverse+user%3Ar-lib+user%3Ahadley+involves%3Ahadley+is%3Aissue&s=updated&type=Issues
# sorted by "recently updated"
# yielded 208 issues on 2020-01-13
# ggplot2 issues very difficult to count lines for, so mostly ignored them

# manually processed, very unscientific!
# selected OP's reprex, then Hadley's and counted lines like so:
# length(clipr::read_clip())

# https://docs.google.com/spreadsheets/d/1zjVdn6L9torH4PR9OqSBFNA8U6YxYsQM-Fj0mJmqF2Q/edit#gid=0

library(googlesheets4)
library(tidyverse)

sheets_deauth()

ssid <- "1zjVdn6L9torH4PR9OqSBFNA8U6YxYsQM-Fj0mJmqF2Q"
df <- sheets_read(ssid)

lims <- c(0, 83)
p <- df %>%
  ggplot(aes(x = them, y = hadley)) +
  geom_point() +
  geom_abline(slope = 1, intercept = 0) +
  coord_fixed(ratio = 1, xlim = lims, ylim = lims)
p
ggsave(here::here("img", "hadley-minimal-reprex.png"), p)
