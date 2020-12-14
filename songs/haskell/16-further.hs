import MySongs
import Data.List
import Data.Maybe

unwrapTags :: Tags -> [String]
unwrapTags (Tags tags) = tags

main = print $ nub $ concat 
             $ (map unwrapTags)
             $ catMaybes
             $ (map tags songs)
