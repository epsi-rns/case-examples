{$mode objfpc}{$H+}
uses SysUtils, MySongs;

var
  song: TSong;
  tags: array of string = ();

begin
  for song in songs do
    insert(song.tags, tags, high(tags)+1);

  writeln(string.join(', ', tags));
end.
