module Tags = {
  let exclude = (_val, lst) =>
    List.filter( x => (x!==_val), lst );

  let rec unique = (lst) =>
    switch lst {
    | [] => []
    | [x] => [x]
    | [x, ...xs] => [x, ...unique(exclude(x, [...xs]))]
  };
}
