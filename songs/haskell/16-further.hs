import MySongs

fromTags Nothing  = []
fromTags (Just (Tags tags)) = map id tags

unique [] = []
unique (tag:tags) = tag:unique(filter((/=) tag) tags)

main = print (unique $ concat $ (map fromTags) $ (map tags songs))


