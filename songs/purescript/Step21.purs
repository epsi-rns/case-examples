module Step21 where
import Prelude
import Effect.Console (log)
import Data.Array (concat, nub)
import MySongs

type Tags = Array String
type Song = { title :: String, tags :: Tags }

songs :: Array Song
songs = [
    { title : "Cantaloupe Island",
      tags : ["60s", "jazz"] },
    { title : "Let it Be",
      tags : ["60s", "rock"] },
    { title : "Knockin' on Heaven's Door",
      tags : ["70s", "rock"] },
    { title : "Emotion",
      tags : ["70s", "pop"] },
    { title : "The River",
      tags : [] }
  ]

main = log $ show $ nub $ concat
        $ map (_.tags) $ songs
