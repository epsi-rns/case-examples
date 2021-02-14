#use "mysongs.ml";;

let () = List.iter (
    fun song -> print_endline song.title
  ) songs;;
