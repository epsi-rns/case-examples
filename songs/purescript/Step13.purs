module Step13 where
import Prelude
import Data.Array (concat, filter)
import Data.Maybe
import MySongs
import Effect.Console (log)

tagsArray :: Array Song -> Array (Maybe Tags)
tagsArray songs = map (\song -> song.tags) songs

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = []
tagsFromJust (Just tags) = tags

flattenTags :: Array (Maybe Tags) -> Tags
flattenTags aTagsArray = concat
        $ (map tagsFromJust) aTagsArray

main = log $ show $ flattenTags $ tagsArray $ songs
