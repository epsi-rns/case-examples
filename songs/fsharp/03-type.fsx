open System

type MyTags = List<string>
type MySong = { Title: string; Tags: MyTags }

let song : MySong = {
  Title = "Cantaloupe Island";
  Tags  = ["60s"; "jazz"]
}

[<EntryPoint>]
Console.WriteLine song.Tags

