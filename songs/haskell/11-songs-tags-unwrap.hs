import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

tagsFromJust :: Maybe Tags -> Tags
tagsFromJust Nothing  = error "Maybe.fromJust: Nothing"
tagsFromJust (Just tags) = tags

flattenTags :: [Maybe Tags] -> [Tags]
flattenTags tagsList = [ 
    tagsFromJust maybeTags | maybeTags <- tagsList,
    maybeTags /= Nothing
  ]

main = print (flattenTags $ tagsList songs)
