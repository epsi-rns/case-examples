import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

flattenTags :: [Maybe Tags] -> [Maybe Tags]
flattenTags aTagsList = [ 
    maybeTags | maybeTags <- aTagsList, maybeTags /= Nothing
  ]

main = print $ flattenTags $ tagsList $ songs
