def sender(songs):
  for song in songs:
    if 'tags' in song:
      for tag in song['tags']:
        yield tag

# main: entry point
from pprint import pprint
from MySongs import songs

pprint(list(sender(songs)))
