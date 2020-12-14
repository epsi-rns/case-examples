import MySongs
import Data.Maybe

unwrap :: Tags -> [String]
unwrap (Tags tags) = tags

flattenTags :: [Maybe Tags] -> [String]
flattenTags aTagsList = concat
        $ (map unwrap (catMaybes aTagsList))

main = print $ flattenTags $ (map tags songs)
