#use "mysongs.ml";;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let unwrap my_option : tl_tags = 
   match my_option with Some x -> x | None -> [];;

let flatten my_list : string list  = List.fold_left (
   fun acc element -> acc @ element
 ) [] my_list;;

let all_tags my_songs: tl_tags list = List.map (
  fun my_song -> (unwrap my_song.tags)
) my_songs;;

let () = print_endline (
    join_str (flatten (all_tags songs))
  )

