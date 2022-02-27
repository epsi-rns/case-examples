{$mode objfpc}{$H+}
uses SysUtils;

type TTags = array of string;
const tags : TTags =
  ('rock', 'jazz', 'rock', 'pop', 'pop');

function exclude(
  element: string; elements: TTags): TTags;
var tag : string;
begin
  result := [];
  for tag in tags do
    if tag <> element then
      insert(tag, result, high(result)+1);
end;

var xcld: TTags;
begin
  xcld := exclude('rock', tags);
  writeln(string.join(', ', xcld));
end.
