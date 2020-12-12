import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = [ tags song | song <- songs ]

main = print $ tagsList songs
