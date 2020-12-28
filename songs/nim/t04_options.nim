import options

type
  StringSeq = seq[string]
  Song = tuple[title: string,
               tags: Option[StringSeq]]

let songs: seq[Song] = @[
  ( title: "Cantaloupe Island",
    tags : some(@["60s", "jazz"])),
  ( title: "Let It Be",
    tags : some(@["60s", "rock"])),
  ( title: "Knockin' on Heaven's Door",
    tags : some(@["70s", "rock"])),
  ( title: "Emotion",
    tags : some(@["70s", "pop"])),
  ( title: "The River",
    tags : none(StringSeq)),
]

for i, song in songs: echo song
