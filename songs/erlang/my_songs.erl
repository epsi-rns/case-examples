-module(my_songs).
-export([songs/0]).

-record(song,  { title, tags = [] }).
% -type song() :: #song{}.
% -export_type([song/0]). 

songs() -> [
  #song{ title = "Cantaloupe Island",
         tags  = ["60s", "jazz"] },
  #song{ title = "Let it Be",
         tags  = ["60s", "rock"] },
  #song{ title = "Knockin' on Heaven's Door",
         tags  = ["70s", "rock"] },
  #song{ title = "Emotion",
         tags  = ["70s", "pop"] },
  #song{ title = "The River"}
].
