#load "MySongs.fsx"

open System
open MySongs

let unwrap myOption = 
   match myOption with | Some x -> x | None -> []

let dumpArray tags =
   "[" + (tags |> String.concat ", ") + "]"

let mapTagss songs =
    songs |> List.map (
      fun (song: MySong) ->
          (song.Tags |> unwrap)
    )

let processAll = (mapTagss 
    >> List.concat >> List.distinct
    >> dumpArray   >> Console.WriteLine
  )

[<EntryPoint>]
processAll <| songs
