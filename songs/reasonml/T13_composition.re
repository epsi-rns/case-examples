module L = Belt.List
module O = Belt.Option
module S = StdLabels.List

open MySongs
open MyTags

let (>>) = (f, g, x) => g(f(x));
let (<<) = (f, g, x) => f(g(x));

L.map (Songs.lsongs, (lsong) => 
    [] |> (O.getWithDefault @@ lsong.Songs.ltags)
) |> (S.flatten >> Tags.unique >> Array.of_list)
  |> Js.log
