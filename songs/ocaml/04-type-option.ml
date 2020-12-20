type tl_tags = string list;;
type tl_song = { 
  title : string; 
  tags : tl_tags option;
};;

let song : tl_song = {
  title = "Cantaloupe Island";
  tags  = Some ["60s"; "jazz"]
};;

let unwrap my_option : tl_tags = 
   match my_option with 
   | Some x -> x
   | None -> [];;

let join_str_r my_record : string = 
  "[" ^ (String.concat "," 
    (unwrap my_record.tags)) ^ "]\n";;

let () = print_string (join_str_r song);;
