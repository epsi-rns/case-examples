import Data.List

type Tags = [String]
data Song = Song { title :: String, tags :: Tags }
        deriving (Show)

songs :: [Song]
songs = [
    Song { title = "Cantaloupe Island",
           tags = ["60s", "jazz"] },
    Song { title = "Let it Be",
           tags = ["60s", "rock"] },
    Song { title = "Knockin' on Heaven's Door",
           tags = ["70s", "rock"] },
    Song { title = "Emotion",
           tags = ["70s", "pop"] },
    Song { title = "The River",
           tags = [] }
  ]

main = print $ nub $ concat $ (map tags songs)

