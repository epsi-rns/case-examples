#load "MySongs.fsx"

open System
open MySongs

let unwrap: Option<MyTags> -> MyTags
   = fun myOption -> 
     match myOption with | Some x -> x | None -> []

let dumpArray: List<string> -> string
   = fun tags ->
     "[" + (tags |> String.concat ", ") + "]"

let mapTagss: List<MySong> -> List<MyTags>
  = fun songs ->
    songs |> List.map (
      fun (song: MySong) ->
          (song.Tags |> unwrap )
    )

let processAll: List<MySong> -> unit
  = (mapTagss 
      >> List.concat >> List.distinct
      >> dumpArray >> Console.WriteLine
    )

[<EntryPoint>]
processAll <| songs
