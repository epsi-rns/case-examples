type tl_tags = list(string)
type tl_song = { title: string, ltags: option(tl_tags) }

type ta_tags = array(string)
type ta_song = { title: string, atags: option(ta_tags) }

let lsong: tl_song = {
  title : "Cantaloupe Island",
  ltags : Some(["60s", "jazz"])
}

let lsongToArray = (lsong) => {
  let {title: mytitle, ltags: mytags} = lsong;
  let ltags = Belt.Option.getWithDefault(mytags, [])
  let asong: ta_song = {
    title : mytitle,
    atags : Some(ltags |> Array.of_list)
  }
  asong
}

Js.log(lsongToArray(lsong))
