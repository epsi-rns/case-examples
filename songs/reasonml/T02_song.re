type tags = list(string)
type song = { title: string, tags: option(tags) }

let song: song = {
  title : "Cantaloupe Island",
  tags  : Some(["60s", "jazz"])
}

let {title, tags: mytags} = song

mytags->Js.log
