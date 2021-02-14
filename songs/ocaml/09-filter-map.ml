#use "mysongs.ml";;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let all_tags my_songs: tl_tags list
  = List.filter_map (
    fun my_song -> my_song.tags
  ) my_songs;;

let () = print_endline (
    join_str (List.concat (all_tags songs))
  )
