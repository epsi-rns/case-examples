-module(t08_import).
-import(my_songs, [songs/0]).
-export([show/0]).

-record(song,  { title, tags = [] }).

show() ->
  Songs = songs(),
  Tags = [ Head#song.tags || Head <- Songs ],
  io:fwrite("~60p~n", [Tags]).
