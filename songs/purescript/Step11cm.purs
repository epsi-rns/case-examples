module Step11cm where
import Prelude
import Data.Maybe
import Data.Array (filter, catMaybes)
import MySongs
import Effect.Console (log)

main = log $ show $ catMaybes $ (map _.tags songs)
