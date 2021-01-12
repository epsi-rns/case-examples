-module(t13_process).
-import(my_songs, [songs/0]).
-import(lists, [foreach/2]).
-import(lists, [append/2]).
-export([show/0, walk/0, flatten/1]).
-include("my_header.hrl").

walk() -> walk([]).

walk(Tags) ->
  receive
    {"tags", T} ->
      walk([T] ++ Tags);
    quit ->
      io:fwrite("~60p~n", [Tags])
  end.

flatten(PID) ->
  Songs = songs(),
  foreach(fun(S) ->
      foreach(fun(T) ->
        PID ! {"tags", T}
      end, S#song.tags)
    end, Songs),
  PID ! quit.

show() ->
  PID = spawn(t13_process, walk, []),
  spawn(t13_process, flatten, [PID]),
  io:fwrite("").
