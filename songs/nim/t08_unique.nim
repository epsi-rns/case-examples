import sequtils, sets, MySongs

echo songs
  .mapIt(it.tags)
  .foldl(a & b)
  .toHashSet
  .toSeq
