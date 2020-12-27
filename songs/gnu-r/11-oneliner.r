library(tibble)
library(purrr)

load("songs.RData")

(dataframe %>% 
  dplyr::filter(.data$tags != "NULL")
)$tags %>% flatten %>% unique %>% paste
