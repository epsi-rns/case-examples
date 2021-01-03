#load "MySongs.fsx"
#load "MyUtils.fsx"

open System
open MySongs
open MyUtils

[<EntryPoint>]
songs
  |> yieldTags
  |> unique
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine
