import options
import MaSongs

proc flatten(songs: seq[Song]): seq[string] =
  var tags: seq[string] = @[]

  for i, song in songs:
    if (song.tags != none(StringSeq)):
      for ii, tag in song.tags.get():
        tags.add(tag)

  result = tags

echo songs.flatten()
