-module(t10_unique).
-import(my_songs, [songs/0]).
-import(lists, [append/1]).
-import(set, [from_list/1, to_list/1]).
-export([show/0]).
-record(song,  { title, tags = [] }).

unique(List) -> sets:to_list(sets:from_list(List)).

show() ->
  Songs = songs(),
  Tags = [ Head#song.tags || Head <- Songs ],
  io:fwrite("~60p~n", [unique(append(Tags))]).
