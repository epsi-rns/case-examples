module L = Belt.List
open MySongs

let lsongs = Songs.lsongs

let lsongToTags = (lsong) => {
  let {Songs.ltags: mytags} = lsong;
  Belt.Option.getWithDefault(lsong.ltags, [])
}

let lo_tags = L.map (lsongs, lsongToTags)

Js.log(lo_tags |> Array.of_list)
