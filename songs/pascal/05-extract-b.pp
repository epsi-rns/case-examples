{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  song : TSong;
  tags : TTags;
  tagss: array of TTags = ();

begin
  for song in songs do
    insert(song.tags, tagss, high(tagss)+1);

  for tags in tagss do
    writeln(string.join(', ', tags));
end.
