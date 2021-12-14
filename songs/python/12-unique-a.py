from MySongs import songs

tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def exclude(val, tags):
  return [tag for tag in tags if tag != val]

def unique(tags):
  if len(tags) <= 1: return tags
  else:
    head, *tail = tags
    return [head] + unique(exclude(head, tail))

print(unique(tags))
