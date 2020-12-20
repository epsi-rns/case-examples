let tags: list(string) = ["rock", "jazz", "rock", "pop", "pop"]

let rec exclude = (_val, lst) =>
  switch lst {
  | [] => []
  | [x] when x === _val => []
  | [x] when x !== _val => [x]
  | [x, ...xs] when x === _val => exclude(_val, [...xs])
  | [x, ...xs] when x !== _val => [x, ...exclude(_val, [...xs])]
  | [x, ...xs] => [x, ...xs] // surpress warning
}

Js.log(tags |> exclude("rock") |> Array.of_list)


