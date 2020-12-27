# this is a nice to have part
# you may skip this purrr part

library(tibble)
library(purrr)

songs_df <- read.csv2(file = "./songs.csv")

songs_df$tags %>%
  walk(function(current) {
    current %>% as.list %>% paste %>% print
  })

