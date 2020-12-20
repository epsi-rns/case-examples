open Printf;;

let tags : string list =
  ["rock"; "jazz"; "rock"; "pop"; "pop"];;

let () = List.iter (printf "%s, ") tags;;


