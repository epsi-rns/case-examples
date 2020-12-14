import MySongs
import Data.Maybe

unwrapTags :: Tags -> [String]
unwrapTags (Tags tags) = tags

flattenTags :: [Maybe Tags] -> [String]
flattenTags aTagsList = concat
        $ ((map unwrapTags) (catMaybes aTagsList))

exclude :: String -> [String] -> [String]
exclude tag xs = [ x | x <- xs, (/=) tag x ]

unique :: [String] -> [String]
unique [] = []
unique (tag:tags) = tag:unique(exclude tag tags)

main = print $ unique $ flattenTags $ (map tags songs)
