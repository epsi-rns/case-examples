#use "mysongs.ml";;
#use "topfind";;
#thread;;
#require "core";;
open Option;;
open Format;;
open Event;;

(* miscellanous utilities *)

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let unwrap = function
  | Some x -> x
  | None -> [];;

(* actor: producer and customer *)

let chan = Event.new_channel();;

let rec_message () = (Event.sync (Event.receive chan ));;

let receiver () =
  let message = ref (rec_message ()) in
    while is_some(!message) do
      printf "%s\n" (get !message);
      message := (rec_message ());
    done;;

let sender () = List.iter (
    fun song ->
      if is_some(song.tags)
      then List.iter (
        fun tag -> Event.sync (
          Event.send chan (Some(tag))
        )
      ) (unwrap song.tags)
  ) songs;
  Event.sync (Event.send chan None);;
  
(* main *)

let () =
  printf "";;
  Thread.create receiver ();;
  sender ();; 
