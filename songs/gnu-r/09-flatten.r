source("my-songs.r")
library(purrr)

songs_df <- dataframe %>% 
  dplyr::filter(.data$tags != "NULL")

tags_df <- songs_df[ , "tags", drop = FALSE]

flattened <- flatten(tags_df$tags)

flattened %>% paste
