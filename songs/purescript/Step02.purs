module Step02 where
import Prelude
import Effect.Console (log)

type Tags = Array String
type Song = { title :: String, tags :: Tags }

song :: Song
song = { title : "Cantaloupe Island", tags : ["60s", "jazz"] }

main = log $ show (song.tags)
