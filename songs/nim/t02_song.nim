type
  StringSeq = seq[string]
  Song = tuple[title: string, tags: StringSeq]

let song: Song = (
    title: "Cantaloupe Island",
    tags : @["60s", "jazz"]
  )

echo song
