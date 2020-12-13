module Step09 where
import Prelude
import Data.Array
import Data.Maybe
import Effect.Console (log)
import MySongs

tagsArray :: Array Song -> Array (Maybe Tags)
tagsArray songs = map (\song -> song.tags) songs

main = log $ show (tagsArray songs)
