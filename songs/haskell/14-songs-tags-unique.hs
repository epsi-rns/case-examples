import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = Tags []
tagsFromJust (Just tags) = tags

unwrapTags :: Tags -> [String]
unwrapTags (Tags tags) = [ tag | tag <- tags ]

flattenTags :: [Maybe Tags] -> [String]
flattenTags tagsList = concat [
    unwrapTags $ tagsFromJust maybeTags | maybeTags <- tagsList
  ]

exclude :: String -> [String] -> [String]
exclude tag xs = [ x | x <- xs, (/=) tag x ]

unique :: [String] -> [String]
unique [] = []
unique (tag:tags) = tag:unique(exclude tag tags)

main = print (unique $ flattenTags $ tagsList songs)
