#load "MySongs.fsx"

open System
open MySongs

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let yieldTags songs: List<string> =
  [ for (song: MySong) in songs do
      if (song.Tags: Option<MyTags>).IsSome then
        yield! (song.Tags |> unwrap)
  ]

[<EntryPoint>]
songs
  |> yieldTags
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine
