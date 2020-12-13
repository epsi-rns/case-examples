import MySongs

tagsList :: [Song] -> [Maybe Tags]
tagsList songs = map tags songs

fromTags :: Maybe Tags -> [String]
fromTags Nothing  = []
fromTags (Just (Tags tags)) = map id tags

flattenTags :: [Maybe Tags] -> [String]
flattenTags tagsList = concat $ map fromTags tagsList

unique :: [String] -> [String]
unique [] = []
unique (tag:tags) = tag:unique(filter((/=) tag) tags)

main = print (unique $ flattenTags $ tagsList songs)

