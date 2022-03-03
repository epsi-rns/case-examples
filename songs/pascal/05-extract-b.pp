{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  Song : TSong;
  Tags : TTags;
  Tagss: array of TTags = ();

begin
  for Song in Songs do
    Insert(Song.Tags, Tagss, High(Tagss)+1);

  for Tags in Tagss do
    WriteLn(string.Join(', ', Tags));
end.
