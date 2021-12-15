import threading, queue
from MySongs import songs

# https://docs.python.org/3/library/queue.html
q = queue.Queue()
tags = []

def receiver():
  while True:
    item = q.get()
    if item is None:
      q.task_done()
      break
    else: 
      if not (item in tags):
        tags.append(item)
      q.task_done()

# send thirty task requests to the worker
def sender():
  for song in songs:
    if 'tags' in song:
      for tag in song['tags']:
        q.put(tag)
  q.put(None)

def main():
  # turn-on the worker thread
  threading.Thread(
    target=receiver, daemon=True
  ).start()

  # block until all tasks are done
  sender()
  q.join()
  print(tags)

main()
