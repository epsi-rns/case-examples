source("my-songs.r")

matrix <- as.matrix(dataframe)
matrix %>% print

matrix %>% write.csv2("./songs.csv")
