{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  Song : TSong;
  Tags : TTags;
  Tagss: array of TTags = ();
  Flatten : TTags = ();

begin
  for Song in Songs do
    Insert(Song.Tags, Tagss, High(Tagss)+1);

  for Tags in Tagss do
    Insert(Tags, Flatten, High(Flatten)+1);

  WriteLn(string.Join(', ', Flatten));
end.
