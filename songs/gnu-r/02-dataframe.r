library(tibble)

dataframe <- tibble(
  title = "Cantaloupe Island",
  tags  = list(list("60s", "jazz"))
)

print(dataframe)

paste(head(dataframe))

paste(names(dataframe))

paste(dataframe["tags"])

paste(dataframe$tags)
