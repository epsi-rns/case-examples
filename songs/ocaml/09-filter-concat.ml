#use "mysongs.ml";;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;
  
let unwrap = function
  | Some x -> x
  | None -> [];;

let all_tags my_songs: string list
  = List.concat_map (
    fun my_song -> (unwrap my_song.tags)
  ) my_songs;;

let () = print_endline (
    join_str (all_tags songs)
  )
