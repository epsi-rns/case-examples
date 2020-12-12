module MySongs (Tags(..), Song, songs, title, tags) where

data Tags = Tags [String]
        deriving (Eq, Show)

data Song = Song { title :: String, tags :: Maybe Tags }
        deriving (Show)

songs = [
    Song { title = "Cantaloupe Island",
           tags = Just (Tags ["60s", "jazz"]) },
    Song { title = "Let it Be",
           tags = Just (Tags ["60s", "rock"]) },
    Song { title = "Knockin' on Heaven's Door",  
           tags = Just (Tags ["70s", "rock"]) },
    Song { title = "Emotion",
           tags = Just (Tags ["70s", "pop"]) },
    Song { title = "The River",
           tags = Nothing }
  ]
