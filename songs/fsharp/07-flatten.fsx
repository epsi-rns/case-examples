open System
#load "MySongs.fsx"

let unwrap myOption: MySongs.MyTags = 
   match myOption with 
   | Some x -> x
   | None -> []

let mapTagss songs: List<MySongs.MyTags> =
    songs |> List.map (
      fun (song: MySongs.MySong) ->
          (song.Tags |> unwrap )
    )

[<EntryPoint>]
MySongs.songs
  |> mapTagss
  |> List.concat 
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine

