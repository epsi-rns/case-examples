library(tibble)

tibble(
  title = "Cantaloupe Island",
  tags  = list(list("60s", "jazz"))
) %>% add_row(
  title = "Let It Be",
  tags  = list(list("60s", "rock"))
) %>% add_row(
  title = "Knockin' on Heaven's Door",
  tags  = list(list("70s", "rock"))
) %>% add_row(
  title = "Emotion",
  tags  = list(list("70s", "pop"))
) %>% add_row(
  title = "The River"
) -> dataframe
