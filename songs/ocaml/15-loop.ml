#use "mysongs.ml";;

(* imperative *)

let len = List.length songs;;
let () = for i = 0 to len-1 do
  print_endline (List.nth songs i).title
done;;

