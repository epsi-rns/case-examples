#use "mysongs.ml";;
#use "topfind";;
open Option;;

let unwrap = function
  | Some x -> x
  | None -> [];;

(* imperative *)

let () = List.iter (
    fun song ->
      if is_some(song.tags)
      then List.iter (
        fun tag -> print_endline tag
      ) (unwrap song.tags)
  ) songs;;
