#load "MySongs.fsx"

open System
open System.Linq
open MySongs

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let extractTags songs =
  query {
    for song in songs do
      where (song.Tags <> None)
      for tag in (song.Tags |> unwrap) do
      select tag
  }

[<EntryPoint>]
songs
  |> Queryable.AsQueryable 
  |> extractTags
  |> Seq.toList |> List.distinct
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine
