module Step14 where
import Prelude
import Effect.Console (log)
import Data.Array (concat, filter, nub)
import Data.Maybe
import MySongs

tagsArray :: Array Song -> Array (Maybe Tags)
tagsArray songs = map (\song -> song.tags) songs

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = []
tagsFromJust (Just tags) = tags

flattenTags :: Array (Maybe Tags) -> Tags
flattenTags tagsArray = concat
       $ (map tagsFromJust) tagsArray

main = log $ show $ nub $ flattenTags $ tagsArray $ songs
