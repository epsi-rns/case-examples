import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = error "Maybe.tagFromJust: Nothing"
tagsFromJust (Just tags) = tags

flattenTags :: [Maybe Tags] -> [Tags]
flattenTags aTagsList = [ 
    tagsFromJust maybeTags | maybeTags <- aTagsList,
    maybeTags /= Nothing
  ]

main = print (flattenTags $ tagsList songs)
