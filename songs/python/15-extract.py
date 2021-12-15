from pprint import pprint
from MyTupleSongs import songs

tagss = [
  song.tags for song in songs
  if song.tags
]

pprint(tagss)
