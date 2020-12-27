# this is a nice to have part
# you may skip this purrr part

source("my-songs.r")
library(purrr)

dataframe$tags %>%
  walk(function(current) {
    current %>% as.list %>% paste %>% print
  })

