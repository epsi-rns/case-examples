from MyTupleSongs import songs

tags = [
  tag for song in songs
  if song.tags
    for tag in song.tags
]

print(list(set(tags)))
