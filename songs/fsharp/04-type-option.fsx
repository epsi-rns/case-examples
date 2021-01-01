open System

type MyTags = List<string>
type MySong = { Title: string; Tags: Option<MyTags> }

let song : MySong = {
  Title = "Cantaloupe Island";
  Tags  = Some ["60s"; "jazz"]
}

let unwrap myOption: MyTags = 
   match myOption with 
   | Some x -> x
   | None -> []

[<EntryPoint>]
song.Tags |> Console.WriteLine


