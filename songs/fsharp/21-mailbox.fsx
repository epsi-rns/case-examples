#load "MySongs.fsx"

open System
open MySongs

let joinStr tags: string =
  "[" + (tags |> String.concat ", ") + "]"

let myAgent =
  MailboxProcessor.Start(fun inbox ->
    let rec loop tags =
      async {
        let! message = inbox.Receive()
        let result =
          match message with
          | Some tag -> tags @ [tag]
          | None     -> []

        if (message.IsSome)
        then do! loop(result)
        else tags |> joinStr |> printfn "%s"
      }
    loop [] 
  )

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
