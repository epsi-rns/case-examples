from pprint import pprint
from MySongs import songs

tags = [
  tag for song in songs
  if 'tags' in song
    for tag in song['tags']
]

pprint(list(set(tags)))
