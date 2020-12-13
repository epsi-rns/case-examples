data Tags = Tags [String] deriving (Show)
data Song = Song { title :: String, tags :: Tags }
        deriving (Show)

song :: Song
song = Song { title = "Cantaloupe Island",
              tags = Tags ["60s", "jazz"] }

main = print $ (tags song)
