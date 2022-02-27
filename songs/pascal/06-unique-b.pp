{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;

function is_exist(
  element: string; tags: TTags): boolean;
var tag: string;
begin
  result := false;
  for tag in tags do
    if (tag = element) then result := true;
end;

var
  song  : TSong;
  tags  : TTags = ();
  unique: TTags = ();
  tag   : string;

begin
  for song in songs do
    insert(song.tags, tags, high(tags)+1);

  for tag in tags do
  begin
    if (not is_exist(tag, unique)) then
      insert(tag, unique, high(unique)+1);
  end;

  writeln(string.join(', ', unique));
end.
