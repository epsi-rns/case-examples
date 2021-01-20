import options
import MaSongs

var chan: Channel[Option[string]]

proc sender(songs: seq[Song]) =
  for i, song in songs:
    if (song.tags != none(StringSeq)):
      for ii, tag in song.tags.get():
        chan.send(some(tag))
  chan.send(none(string))

proc receiver() =
  var tags: seq[string] = @[]

  while true:
    let tried = chan.tryRecv()
    if tried.dataAvailable:
      if tried.msg != none(string):
        tags.add(tried.msg.get())
      else:
        echo tags
        break

# Initialize the channel.
chan.open()

# Launch the worker.
var worker1: Thread[seq[Song]]
createThread[seq[Song]](worker1, sender, songs)

var worker2: Thread[void]
createThread(worker2, receiver)

# Wait for the thread to exit
worker1.joinThread()
worker2.joinThread()

# Clean up the channel.
chan.close()
