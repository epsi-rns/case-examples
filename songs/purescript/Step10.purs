module Step10 where
import Prelude
import Data.Maybe
import Data.Array (filter)
import Effect.Console (log)
import MySongs

tagsArray :: Array Song -> Array (Maybe Tags)
tagsArray songs = map (\song -> song.tags) songs

flattenTags :: Array (Maybe Tags) -> Array (Maybe Tags)
flattenTags aTagsArray = filter ((/=) Nothing) aTagsArray

main = log $ show $ flattenTags $ tagsArray $ songs
