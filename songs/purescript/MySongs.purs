module MySongs (Tags(..), Song, songs) where

import Data.Maybe

type Tags = Array String
type Song = { title :: String, tags :: Maybe Tags }

songs :: Array Song
songs = [
    { title : "Cantaloupe Island",
      tags : Just (["60s", "jazz"]) },
    { title : "Let it Be",
      tags : Just (["60s", "rock"]) },
    { title : "Knockin' on Heaven's Door",
      tags : Just (["70s", "rock"]) },
    { title : "Emotion",
      tags : Just (["70s", "pop"]) },
    { title : "The River",
      tags : Nothing }
  ]
