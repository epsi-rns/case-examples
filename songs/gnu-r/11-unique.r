source("my-songs.r")
library(purrr)

songs_df <- dataframe %>% 
  dplyr::filter(.data$tags != "NULL")

flattened <- flatten(songs_df$tags)

distinct <- unique(flattened)

distinct %>% paste
