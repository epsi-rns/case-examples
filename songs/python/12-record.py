import pprint
from collections import namedtuple
 
Song = namedtuple('MySong', ['title', 'tags'])
song = Song('Cantaloupe Island',
  ['60s', 'jazz'])

pprint.pprint(song)
