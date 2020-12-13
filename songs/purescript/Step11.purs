module Step11 where
import Prelude
import Data.Maybe
import Data.Array (filter)
import MySongs
import Effect.Console (log)
import Effect.Unsafe
import Effect.Exception

error :: forall a. String -> a
error = unsafePerformEffect <<< throw

tagsArray :: Array Song -> Array (Maybe Tags)
tagsArray songs = map (\song -> song.tags) songs

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = error "Maybe.fromJust: Nothing"
tagsFromJust (Just tags) = tags

flattenTags :: Array (Maybe Tags) -> Array Tags
flattenTags aTagsArray = (map tagsFromJust)
        $ (filter ((/=) Nothing) aTagsArray)

main = log $ show $ flattenTags $ tagsArray $ songs
