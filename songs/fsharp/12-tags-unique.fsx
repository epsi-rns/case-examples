open System

let tags: List<string> =
  ["rock"; "jazz"; "rock"; "pop"; "pop"]

let exclude value tags: List<string> =
  [ for (tag: string) in tags do
      if (tag <> value) then yield tag
  ]

let rec unique tags: List<string> =
  match tags with
  | [] -> []
  | [head] -> [head]
  | (head::tail) -> [head] @
                    (unique (exclude head tail))

[<EntryPoint>]
tags
  |> unique
  |> fun (tags) ->
     "[" + (tags |> String.concat ", ") + "]"
  |> Console.WriteLine
