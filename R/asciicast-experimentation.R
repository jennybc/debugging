library(asciicast)
library(here)

cast <- record(
  here("R", "object-of-type-closure-is-not-subsettable.R"),
  typing_speed = 1/10,
  empty_wait = 1.5,
  end_wait = 8
)
play(cast)

write_svg(cast, "foo.svg", window = TRUE)
