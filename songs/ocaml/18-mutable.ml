#use "mysongs.ml";;
#use "topfind";;
open Option;;

(* miscellanous utilities *)

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let unwrap = function
  | Some x -> x
  | None -> [];;

(* imperative *)

let tags : string array ref = ref [||];;

let flatten () = List.iter (
    fun song ->
      if is_some(song.tags)
      then List.iter (
        fun tag -> tags := (Array.append !tags [|tag|])
      ) (unwrap song.tags)
  ) songs;;

(* main *)

let () =
  flatten ();
  print_endline (
    join_str (Array.to_list !tags));;
