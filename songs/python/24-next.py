def receiver(mygenr):
  tags = []

  while True:
    item = next(mygenr)
    if item is None:
      return tags
    else: 
      if not (item in tags):
        tags.append(item)

def sender(songs):
  for song in songs:
    if 'tags' in song:
      for tag in song['tags']:
        yield tag
  yield None

# main: entry point
from pprint import pprint
from MySongs import songs

mygenr = sender(songs)
pprint(receiver(mygenr))
