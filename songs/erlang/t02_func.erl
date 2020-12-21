-module(t02_func).
-export([show/0]).

tags() -> ["rock", "jazz", "rock", "pop", "pop"].

show() ->
  io:fwrite("~60p~n", [tags()]).

