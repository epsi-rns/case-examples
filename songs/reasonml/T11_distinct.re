module L = Belt.List
module O = Belt.Option
module S = StdLabels.List

open MySongs
open MyTags

let l_tags = L.map (Songs.lsongs, (lsong) => 
    O.getWithDefault(lsong.Songs.ltags, [])
  ) 

Js.log(l_tags |> S.flatten |> Tags.unique |> Array.of_list)
