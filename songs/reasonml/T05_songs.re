module L = Belt.List
module O = Belt.Option
open MySongs

type ta_tags  = array(string)
type ta_song  = { title: string, atags: option(ta_tags) }
type ta_songs = array(ta_song)

let lsongs = Songs.lsongs

let lsongToArray = (lsong) => {
  let {title: mytitle, Songs.ltags: mytags} = lsong;
  let ltags = O.getWithDefault(mytags, [])
  let asong: ta_song = {
    title : mytitle,
    atags : Some(ltags |> Array.of_list)
  }
  asong
}

let asongs: ta_songs = L.map
  (lsongs, lsongToArray) |> Array.of_list

Js.log(asongs)
