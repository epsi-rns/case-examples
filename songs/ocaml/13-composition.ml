#use "topfind"
#require "batteries";;
open Batteries;;

#use "mysongs.ml";;
#use "mytags.ml";;

let unwrap my_option = 
   match my_option with | Some x -> x | None -> [];;

let flatten my_list = List.fold_left (
   fun acc element -> acc @ element
 ) [] my_list;;

let all_tags my_songs = List.map (
  fun my_song -> unwrap @@ my_song.tags
) my_songs;;

let () = songs
  |> (unique % flatten % all_tags)
  |> (print_endline % join_str);;
