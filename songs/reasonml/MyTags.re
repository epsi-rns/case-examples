module Tags = {
  let rec exclude = (_val, lst) =>
    switch lst {
    | [] => []
    | [x] when x === _val => []
    | [x] when x !== _val => [x]
    | [x, ...xs] when x === _val => exclude(_val, [...xs])
    | [x, ...xs] when x !== _val => [x, ...exclude(_val, [...xs])]
    | [x, ...xs] => [x, ...xs] // surpress warning
  };

  let rec unique = (lst) =>
    switch lst {
    | [] => []
    | [x] => [x]
    | [x, ...xs] => [x, ...unique(exclude(x, [...xs]))]
  };
}
