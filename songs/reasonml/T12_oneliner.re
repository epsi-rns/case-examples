module L = Belt.List
module O = Belt.Option
module S = StdLabels.List

open MySongs
open MyTags

Js.log(
  L.map (Songs.lsongs, (lsong) => 
    O.getWithDefault(lsong.Songs.ltags, [])
  ) 
  |> S.flatten 
  |> Tags.unique 
  |> Array.of_list
)
