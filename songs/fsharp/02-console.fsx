open System

let tags: List<string> =
  ["rock"; "jazz"; "rock"; "pop"; "pop"] 
  |> List.distinct

Console.WriteLine tags

