{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  song  : TSong;
  tags  : TTags = ();
  unique: TTags = ();
  tag, uni : ansistring;
  exist : boolean;

begin
  for song in songs do
  begin
    insert(song.tags, tags, high(tags)+1);
  end;

  for tag in tags do
  begin
    exist := false;
    for uni in unique do
      if (tag = uni) then exist := true;
    if (not exist) then
      insert(tag, unique, high(unique)+1);
  end;

  writeln(string.join(', ', unique));
end.
