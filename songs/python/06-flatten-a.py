from pprint import pprint
from MySongs import songs

tagss = [
  song['tags'] for song in songs
  if 'tags' in song
]

tags = [
  tag for tags in tagss
      for tag  in tags
]

pprint(tags)
