{$mode objfpc}{$H+}
uses SysUtils, MySongs;

type TTags = array of string;

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
var head: string;
begin
  if length(elements) <= 1 then
    result := elements
  else
  begin
    head := elements[0];
    delete(elements, 0, 1); // tail

    result := unique(exclude(head, elements));
    insert(head, result, 0);
  end
end;

var
  song  : TSong;
  tags  : TTags = ();
begin
  for song in songs do
    insert(song.tags, tags, high(tags)+1);

  writeln(string.join(', ', unique(tags)));
end.
