let tags: List<string> =
  ["rock"; "jazz"; "rock"; "pop"; "pop"]

let joinStr : string =
  "[" + (tags |> String.concat ", ") + "]"

let joinStr2: string =
  "[" + (tags
        |> List.reduce (fun acc tag ->
           acc + ", " + tag)
  ) + "]"

printfn "%s" joinStr2

