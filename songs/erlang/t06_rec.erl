-module(t06_rec). 
-export([show/0]). 

-record(song, { title, tags = [] }).

show() ->
  Song = #song{
    title = "Cantaloupe Island",
    tags  = ["60s", "jazz"]
  },
  io:fwrite("~60p~n", [Song#song.tags]).
