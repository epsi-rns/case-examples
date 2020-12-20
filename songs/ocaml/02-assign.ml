let tags : string list =
  ["rock"; "jazz"; "rock"; "pop"; "pop"];;
let join_str : string =
  "[" ^ (String.concat ", " tags) ^ "]";;

let () = print_endline join_str;;
