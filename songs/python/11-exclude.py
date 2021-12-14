tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def exclude(val, tags):
  return [tag for tag in tags if tag != val]

print(exclude('rock', tags))
