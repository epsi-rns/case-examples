from pprint import pprint
from MySongs import songs

tagss = [
  song['tags'] for song in songs
  if 'tags' in song
]

a = []
for tags in tagss:
  for tag in tags:
    a.append(tag)

pprint(a)
