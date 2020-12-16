module L = Belt.List
module O = Belt.Option
module S = StdLabels.List
open MySongs

let lsongs = Songs.lsongs

let lsongToTags = (lsong) => {
  let {Songs.ltags: mytags} = lsong;
  O.getWithDefault(mytags, [])
}

let lo_tags = L.map (lsongs, lsongToTags) |> S.flatten

Js.log(lo_tags |> Array.of_list)