{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  song : TSong;
  tags : TTags;
  tagss: array of TTags = ();
  flatten : TTags = ();

begin
  for song in songs do
    insert(song.tags, tagss, high(tagss)+1);

  for tags in tagss do
    insert(tags, flatten, high(flatten)+1);

  writeln(string.join(', ', flatten));
end.
