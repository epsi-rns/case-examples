import MySongs

fromTags Nothing  = []
fromTags (Just (Tags tags)) = map id tags

main = print (nub $ concat $ (map fromTags) $ (map tags songs))
