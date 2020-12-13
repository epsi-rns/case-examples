data Tags = Tags [String] deriving (Show)
data Song = Song { title :: String, tags :: Tags }
        deriving (Show)

song :: Song
song = Song { title = "Cantaloupe Island",
              tags = Tags ["60s", "jazz"] }

unwrap :: Tags -> [String]
unwrap (Tags tags) = [ tag | tag <- tags ]

main = print $ unwrap $ tags song
