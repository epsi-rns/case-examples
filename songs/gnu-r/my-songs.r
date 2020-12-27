library(tibble)

dataframe <- tibble(
  title = "Cantaloupe Island",
  tags  = list(list("60s", "jazz"))
)

dataframe <- add_row(dataframe,
  title = "Let It Be",
  tags  = list(list("60s", "rock"))
)

dataframe <- dataframe %>% add_row(
  title = "Knockin' on Heaven's Door",
  tags  = list(list("70s", "rock"))
)

add_row(dataframe,
  title = "Emotion",
  tags  = list(list("70s", "pop"))
) -> dataframe

dataframe %>% add_row(
  title = "The River"
) -> dataframe
