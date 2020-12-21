-module(t04_element).
-export([show/0]).

print_each([]) -> ok;
print_each([Head|Tail]) ->
  io:fwrite("~60p~n", [Head]),
  print_each(Tail).

show() ->
  Tags = ["rock", "jazz", "rock", "pop", "pop"],
  print_each(Tags).

