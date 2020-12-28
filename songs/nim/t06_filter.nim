import sequtils
import MySongs

let tagsSeq = songs
  .mapIt(it.tags)
  .filterIt(it != @[])

for i, tags in tagsSeq: echo tags
