open MyTags

let tags: list(string) =
  ["rock", "jazz", "rock", "pop", "pop"]

Js.log(tags |> Tags.unique |> Array.of_list)


