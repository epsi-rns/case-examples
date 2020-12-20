type tl_tags  = string list;;
type tl_song  = {
  title : string; tags : tl_tags option;
};;
type tl_songs = tl_song list;;

let songs: tl_songs = [
    { title = "Cantaloupe Island";
      tags = Some ["60s"; "jazz"]
    };
    { title = "Let it Be";
      tags = Some ["60s"; "rock"]
    };
    { title = "Knockin' on Heaven's Door";
      tags = Some ["70s"; "rock"]
    };
    { title = "Emotion";
      tags = Some ["70s"; "pop"]
    };
    { title = "The River";
      tags = None
    }
];;
