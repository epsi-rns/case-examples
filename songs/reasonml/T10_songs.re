module L = Belt.List
module O = Belt.Option
module S = StdLabels.List
open MySongs

let lsongToTags = (lsong) => {
 O.getWithDefault(lsong.Songs.ltags, [])
}

let l_tags = L.map (Songs.lsongs, lsongToTags) 

Js.log(l_tags |> S.flatten |> Array.of_list)
