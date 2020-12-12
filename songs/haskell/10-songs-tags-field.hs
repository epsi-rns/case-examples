import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

flattenTags :: [Maybe Tags] -> [Maybe Tags]
flattenTags tagsList = [ 
    maybeTags | maybeTags <- tagsList, maybeTags /= Nothing
  ]

main = print (flattenTags $ tagsList $ songs)
