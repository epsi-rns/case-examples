import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = Tags []
tagsFromJust (Just tags) = tags

unwrap :: Tags -> [String]
unwrap (Tags tags) = [ tag | tag <- tags ]

flattenTags :: [Maybe Tags] -> [[String]]
flattenTags tagsList = [
    unwrap $ tagsFromJust maybeTags | maybeTags <- tagsList
  ]

main = print (flattenTags $ tagsList songs)
