-module(t05_element).
-export([show/0]).

show() ->
  Tags = ["rock", "jazz", "rock", "pop", "pop"],
  [io:fwrite("~60p~n", [Head]) || Head <- Tags].

