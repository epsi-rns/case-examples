import MySongs
import Data.List

fromTags Nothing  = []
fromTags (Just (Tags tags)) = tags

main = print $ nub $ concat 
             $ (map fromTags) 
             $ (map tags songs)
