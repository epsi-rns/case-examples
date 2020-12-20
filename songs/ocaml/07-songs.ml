type tl_tags  = string list;;
type tl_song  = {
  title : string; tags : tl_tags;
};;
type tl_songs = tl_song list;;

let songs: tl_songs = [
    { title = "Cantaloupe Island";
      tags = ["60s"; "jazz"]
    };
    { title = "Let it Be";
      tags = ["60s"; "rock"]
    };
    { title = "Knockin' on Heaven's Door";
      tags = ["70s"; "rock"]
    };
    { title = "Emotion";
      tags = ["70s"; "pop"]
    };
    { title = "The River";
      tags = []
    }
];;

let join_str my_tags : string =
  "[" ^ (String.concat ", " my_tags) ^ "]";;

let all_tags my_songs : string list = List.map (
  fun my_song -> (join_str my_song.tags)
) my_songs;;

let join_all my_all : string =
  String.concat "\n" my_all;;

let () = print_endline (join_all (all_tags songs));;

