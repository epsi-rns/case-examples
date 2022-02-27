{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  song : TSong;
  tags : TTags;
  tagss: array of TTags = ();

begin
  for song in songs do
  begin
    insert(song.tags, tagss, high(tagss)+1);
  end;

  for tags in tagss do
  begin
    writeln(string.join(', ', tags));
  end;
end.
