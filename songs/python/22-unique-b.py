from MySongs import songs

tags = [
  tag for song in songs
  if 'tags' in song
    for tag in song['tags']
]

def exclude(val, tags):
  return [tag for tag in tags if tag != val]

def unique(tags):
  if len(tags) <= 1: return tags
  else:
    head, *tail = tags
    return [head] + unique(exclude(head, tail))

print(unique(tags))
