let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let exclude my_val my_tags : string list =
  List.filter (
    fun tag -> (tag <> my_val)
  ) my_tags;;

let rec unique my_tags : string list = 
   match my_tags with 
   | [] -> []
   | [last] -> [last]
   | (head::tail) -> [head] @ 
       (unique (exclude head tail));;
