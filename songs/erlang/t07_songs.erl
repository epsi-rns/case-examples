-module(t07_songs). 
-export([show/0]). 

-record(song,  { title, tags = [] }).

show() ->
  Songs = [
    #song{ title = "Cantaloupe Island",
           tags  = ["60s", "jazz"] },
    #song{ title = "Let it Be",
           tags  = ["60s", "rock"] },
    #song{ title = "Knockin' on Heaven's Door",
           tags  = ["70s", "rock"] },
    #song{ title = "Emotion",
           tags  = ["70s", "pop"] },
    #song{ title = "The River"}
  ],
  [ io:fwrite("~60p~n",
    [Head#song.tags]) || Head <- Songs
  ].
