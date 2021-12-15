from collections import namedtuple
 
Song  = namedtuple('MySong', ['title', 'tags'])
songs = [
  Song('Cantaloupe Island', ['60s', 'jazz']),
  Song('Let It Be', ['60s', 'rock']),
  Song('Knockin\' on Heaven\'s Door',
    ['70s', 'rock']),
  Song('Emotion', ['60s', 'jazz']),
  Song('The River', None)
]
