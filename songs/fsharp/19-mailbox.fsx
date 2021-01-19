#load "MySongs.fsx"

open System
open MySongs

let myAgent =
  MailboxProcessor.Start(fun inbox ->
    async {
      while true do
        let! message = inbox.Receive()
        match message with
        | Some tag -> printfn "Tag: '%s'" tag
        | None     -> printfn "None"
    })

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let flatten songs: unit = do
  for (song: MySong) in songs do
    if (song.Tags: Option<MyTags>).IsSome then
      for (tag: string) in (song.Tags |> unwrap) do
        Some(tag) |> myAgent.Post

[<EntryPoint>]
songs |> flatten
None  |> myAgent.Post

