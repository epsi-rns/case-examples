let tags: list(string) = ["rock", "jazz", "rock", "pop", "pop"]
let exclude = (_val, lst) => List.filter( x => (x!==_val), lst );

Js.log(tags |> exclude("rock") |> Array.of_list)


