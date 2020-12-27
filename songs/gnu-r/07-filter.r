source("my-songs.r")

songs_df <- dataframe %>% 
  dplyr::filter(.data$tags != "NULL")

songs_df %>% print
