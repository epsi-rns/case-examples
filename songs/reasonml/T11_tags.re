module L = Belt.List
module O = Belt.Option
module S = StdLabels.List

open MySongs
open MyTags

let lsongs = Songs.lsongs

let lsongToTags = (lsong) => {
  let {Songs.ltags: mytags} = lsong;
  O.getWithDefault(mytags, [])
}

let lo_tags = L.map (lsongs, lsongToTags) |> S.flatten

Js.log(lo_tags |> Tags.unique |> Array.of_list)
