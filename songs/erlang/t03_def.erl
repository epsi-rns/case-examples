-module(t03_def).
-export([show/0]).

-define(Tags, ["rock", "jazz", "rock", "pop", "pop"]).

show() ->
  io:fwrite("~60p~n", [?Tags]).

