let tags : string list =
  ["rock"; "jazz"; "rock"; "pop"; "pop"];;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let exclude my_val my_tags : string list =
  List.filter (
    fun tag -> (tag <> my_val)
  ) my_tags;;

let () = print_endline (
  join_str (exclude "rock" tags)
);;
