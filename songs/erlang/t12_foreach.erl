-module(t12_foreach).
-import(my_songs, [songs/0]).
-import(lists, [foreach/2]).
-export([show/0]).
-include("my_header.hrl").

flatten(Songs) ->
  foreach(fun(S) ->
      foreach(fun(T) ->
        io:fwrite("~p ", [T])
      end, S#song.tags)
    end, Songs).

show() ->
  Songs = songs(),
  flatten(Songs),
  io:fwrite("\n").
