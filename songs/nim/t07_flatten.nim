import sequtils
import MySongs

let 
  tagsSeq: seq[StringSeq] = songs.mapIt(it.tags)
  tags: StringSeq = tagsSeq.foldl(a & b)

echo tags
