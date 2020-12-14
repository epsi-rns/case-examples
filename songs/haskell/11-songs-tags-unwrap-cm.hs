import MySongs
import Data.Maybe

main = print $ catMaybes (map tags songs)
