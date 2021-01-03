module MyUtils

#load "MySongs.fsx"
open MySongs

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let yieldTags songs: List<string> =
  [ for (song: MySong) in songs do
      if (song.Tags: Option<MyTags>).IsSome then
        yield! (song.Tags |> unwrap)
  ]

let exclude value tags: List<string> =
  [ for (tag: string) in tags do
      if (tag <> value) then yield tag
  ]

let rec unique tags: List<string> =
  match tags with
  | [] -> []
  | [head] -> [head]
  | (head::tail) -> [head] @
                    (unique (exclude head tail))
