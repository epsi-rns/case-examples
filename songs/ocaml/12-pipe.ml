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

let (|>) v f = f v;;

let () = songs
  |> all_tags
  |> flatten
  |> unique
  |> join_str
  |> print_endline;;
