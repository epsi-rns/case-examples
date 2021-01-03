#load "MySongs.fsx"

open System
open MySongs

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let yieldTagss songs: List<MyTags> =
  [ for (song: MySong) in songs do
      if (song.Tags: Option<MyTags>).IsSome then
        yield (song.Tags |> unwrap)
  ]

[<EntryPoint>]
for tags in (songs |> yieldTagss) do
    tags |> Console.WriteLine
