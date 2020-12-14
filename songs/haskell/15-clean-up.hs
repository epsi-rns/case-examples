import MySongs
import Data.Maybe

unwrapTags :: Tags -> [String]
unwrapTags (Tags tags) = tags

flattenTags :: [Maybe Tags] -> [String]
flattenTags aTagsList = concat
        $ ((map unwrapTags) (catMaybes aTagsList))

unique :: [String] -> [String]
unique [] = []
unique (tag:tags) = tag:unique(filter((/=) tag) tags)

main = print (unique $ flattenTags $ (map tags songs))
