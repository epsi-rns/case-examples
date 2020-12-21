-module(t01_list).
-export([show/0]).

show() ->
  Tags = ["rock", "jazz", "rock", "pop", "pop"],
  io:fwrite("~60p~n", [Tags]).

