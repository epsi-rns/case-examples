open System

let tags: List<string> =
  ["rock"; "jazz"; "rock"; "pop"; "pop"]

let exclude value tags: List<string> =
  [ for (tag: string) in tags do
      if (tag <> value) then yield tag
  ]

[<EntryPoint>]
tags
  |> exclude("rock")
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine
