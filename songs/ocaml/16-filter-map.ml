#use "mysongs.ml";;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let unwrap = function
  | Some x -> x
  | None -> [];;

let all_tags my_songs: tl_tags list
  = List.filter_map (
    fun my_song -> my_song.tags
  ) my_songs;;

let () = List.iter (
    fun tags -> print_endline (join_str tags)
  ) (all_tags songs);;
