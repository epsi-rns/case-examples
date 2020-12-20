type tl_tags  = string list;;
type tl_song  = {
  title : string; tags : tl_tags option;
};;
type tl_songs = tl_song list;;

let all_tags_test: string list option list =[ 
  Some ["60s"; "jazz"]; Some ["60s"; "rock"]; 
  Some ["70s"; "rock"]; Some ["70s"; "pop"];
  None];;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let unwrap my_option : tl_tags = 
   match my_option with Some x -> x | None -> [];;

let flatten my_list : string list = List.fold_left (
   fun acc element -> acc @ (unwrap element)
 ) [] my_list;;

let () = print_endline (join_str (flatten all_tags_test))

