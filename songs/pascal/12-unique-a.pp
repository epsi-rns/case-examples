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

function unique(elements: TTags): TTags;
var
  xcld, tail: TTags;
  head: string;
begin
  if length(elements) <= 1 then
    result := elements
  else
  begin
    head := elements[0];
    tail := elements;
    delete(tail, 0, 1);

    xcld := exclude(head, tail);
    result := unique(xcld);
    insert(head, result, 0);
  end
end;

var
  uniq: TTags;
begin
  uniq := unique(tags);
  writeln(string.join(', ', uniq));
end.
