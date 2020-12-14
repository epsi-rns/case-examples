module Step13 where
import Prelude
import Data.Array (concat, filter, catMaybes)
import Data.Maybe
import MySongs
import Effect.Console (log)

main = log $ show $ concat $ catMaybes $ (map _.tags songs)
