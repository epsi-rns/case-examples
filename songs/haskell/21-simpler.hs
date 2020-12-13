import Data.List

data Tags = Tags [String] deriving (Eq, Show)
data Song = Song { title :: String, tags :: Tags }
        deriving (Show)

songs :: [Song]
songs = [
    Song { title = "Cantaloupe Island",
           tags = Tags ["60s", "jazz"] },
    Song { title = "Let it Be",
           tags = Tags ["60s", "rock"] },
    Song { title = "Knockin' on Heaven's Door",
           tags = Tags ["70s", "rock"] },
    Song { title = "Emotion",
           tags = Tags ["70s", "pop"] },
    Song { title = "The River",
           tags = Tags [] }
  ]

main = print $ nub $ concat
        $ (map (\(Tags tags) -> tags))
        $ (map tags songs)

