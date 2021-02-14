let tags : string array =
  [|"rock"; "jazz"; "rock"; "pop"; "pop"|];;
let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let () = print_endline (
  join_str (Array.to_list tags));;
