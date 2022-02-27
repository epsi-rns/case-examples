{$mode objfpc}{$H+}
uses SysUtils;

type TTags = array of string;
const tags : TTags =
  ('rock', 'jazz', 'rock', 'pop', 'pop');

function exclude(
  element: string; elements: TTags): TTags;
var i  : integer;
begin
  i := high(elements);
  repeat
    if elements[i] = element then
      delete(elements, i, 1);
    dec(i);
  until i < 0;

  result := elements;
end;

var xcld: TTags;
begin
  xcld := exclude('rock', tags);
  writeln(string.join(', ', xcld));
end.
