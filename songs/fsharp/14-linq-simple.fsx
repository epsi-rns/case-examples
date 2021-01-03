#load "MySongs.fsx"

open System
open System.Linq
open MySongs

let extractTagss songs =
  query {
    for song in songs do
    where (song.Tags <> None)
    select song.Tags
  }

[<EntryPoint>]
for tags in (songs
    |> Queryable.AsQueryable 
    |> extractTagss
  ) do
    tags |> Console.WriteLine
