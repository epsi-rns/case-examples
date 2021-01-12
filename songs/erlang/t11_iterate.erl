-module(t11_iterate).
-import(my_songs, [songs/0]).
-export([show/0]).
-include("my_header.hrl").

flatten_inner([]) -> ok;
flatten_inner([Head|Tail]) ->
  io:fwrite("~p ", [Head]),
  flatten_inner(Tail).

flatten([]) -> ok;
flatten([Head|Tail]) ->
  flatten_inner(Head#song.tags),
  flatten(Tail).

show() ->
  Songs = songs(),
  flatten(Songs),
  io:fwrite("\n").
