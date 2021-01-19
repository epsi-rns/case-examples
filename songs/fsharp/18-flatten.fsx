#load "MySongs.fsx"

open System
open MySongs

let unwrap myOption: MyTags = 
  match myOption with | Some x -> x | None -> []

let flatten songs: unit = do
  for (song: MySong) in songs do
    if (song.Tags: Option<MyTags>).IsSome then
      for (tag: string) in (song.Tags |> unwrap) do
        tag |> Console.WriteLine

[<EntryPoint>]
songs |> flatten
