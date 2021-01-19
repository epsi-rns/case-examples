#load "MySongs.fsx"

open System
open MySongs

type Message =  string * AsyncReplyChannel<string>

let joinStr tags: string =
  "[" + (tags |> String.concat ", ") + "]"

let replyAgent =
  MailboxProcessor<Message>.Start(fun inbox ->
    let rec loop tags =
      async {
        let! (tag, replyChannel) = inbox.Receive()
        let newTags = tags @ [tag]
        replyChannel.Reply
          (String.Format
            ("Received tags: {0}", newTags |> joinStr))
        do! loop(newTags)
      }
    loop([])
  )

let unwrap myOption: MyTags = 
   match myOption with | Some x -> x | None -> []

let flatten songs: unit = do
  for (song: MySong) in songs do
    if (song.Tags: Option<MyTags>).IsSome then
      for (tag: string) in (song.Tags |> unwrap) do
        replyAgent.PostAndReply(fun rc -> tag, rc)
          |> Console.WriteLine

[<EntryPoint>]
songs |> flatten


