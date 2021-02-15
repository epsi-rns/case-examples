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

let rec_message () = (Event.sync (
    Event.receive chan
  ));;

let receiver () =
  let tags : string array ref = ref [||] in
    let message = ref (rec_message ()) in (
      while is_some(!message) do
        printf "%s\n" (get !message); (* print later *)
        tags := (Array.append !tags [|(get !message)|]);
        message := (rec_message ());
      done;
      print_endline (
        join_str (Array.to_list !tags)
      );
    );;

let sender () = List.iter (
    fun song ->
      if is_some(song.tags)
      then List.iter (
        fun tag -> Event.sync (
          Event.send chan (Some(tag))
        )
      ) (unwrap song.tags)
  ) songs;;
  
(* main *)

let () =
  printf "";;
  Thread.create receiver ();;
  sender ();;  
  Event.sync (Event.send chan None);;
