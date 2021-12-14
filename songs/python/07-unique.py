from MySongs import songs

tags = [
  tag for song in songs
  if 'tags' in song
    for tag in song['tags']
]

print(list(set(tags)))
