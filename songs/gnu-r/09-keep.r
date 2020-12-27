library(tibble)

songs_df <- read.csv2(file = "./songs.csv")

songs_df <- songs_df %>% 
  dplyr::filter(.data$tags != "NULL")

keeps <- "tags"
tags_df <- songs_df[ , keeps, drop = FALSE]

tags_df %>% print
