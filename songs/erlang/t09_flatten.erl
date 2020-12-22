-module(t09_flatten).
-import(my_songs, [songs/0]).
-import(lists, [append/1]).
-export([show/0]).

-record(song,  { title, tags = [] }).

show() ->
  Songs = songs(),
  Tags = [ Head#song.tags || Head <- Songs ],
  io:fwrite("~60p~n", [append(Tags)]).
