module Step14 where
import Prelude
import Effect.Console (log)
import Data.Array (concat, filter, catMaybes, nub)
import Data.Maybe
import MySongs

main = log $ show $ nub
        $ concat $ catMaybes $ (map _.tags songs)
