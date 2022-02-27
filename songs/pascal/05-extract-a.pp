{$mode objfpc}{$H+}
uses SysUtils, MySongs;

var
  song: TSong;
  tags: array of string = ();

begin
  for song in songs do
  begin
    insert(song.tags, tags, high(tags)+1);
  end;

  writeln(string.join(', ', tags));
end.
