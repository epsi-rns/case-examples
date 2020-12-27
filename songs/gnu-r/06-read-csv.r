library(tibble)

songs_df <- read.csv2(file = "./songs.csv")
songs_df["tags"] %>% paste
