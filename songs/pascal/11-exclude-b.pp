{$mode objfpc}{$H+}
uses SysUtils;

type TTags = array of string;
const tags : TTags =
  ('rock', 'jazz', 'rock', 'pop', 'pop');

function exclude(
  value: string; elements: TTags): TTags;
var element : string;
begin
  result := [];
  for element in elements do
    if value <> element then
      insert(element, result, high(result)+1);
end;

var xcld: TTags;
begin
  xcld := exclude('rock', tags);
  writeln(string.join(', ', xcld));
end.
