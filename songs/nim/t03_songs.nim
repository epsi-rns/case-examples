type
  StringSeq = seq[string]
  Song = tuple[title: string, tags: StringSeq]

let songs: seq[Song] = @[
  ( title: "Cantaloupe Island",
    tags : @["60s", "jazz"]),
  ( title: "Let It Be",
    tags : @["60s", "rock"]),
  ( title: "Knockin' on Heaven's Door",
    tags : @["70s", "rock"]),
  ( title: "Emotion",
    tags : @["70s", "pop"]),
  ( title: "The River",
    tags : @[]),
]

for i, song in songs: writeLine(stdout, song)
