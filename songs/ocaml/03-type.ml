type tl_tags = string list;;
type tl_song = { title : string; tags : tl_tags; };;

let song : tl_song = {
  title = "Cantaloupe Island";
  tags  = ["60s"; "jazz"]
};;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let () = print_endline (join_str song.tags);;
