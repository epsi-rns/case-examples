open System
#load "MySongs.fsx"

let unwrap myOption: MySongs.MyTags = 
   match myOption with 
   | Some x -> x
   | None -> []

[<EntryPoint>]
for song in MySongs.songs do
   song.Tags
     |> unwrap
     |> Console.WriteLine

