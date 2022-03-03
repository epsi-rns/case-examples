{$mode objfpc}{$H+}
uses SysUtils, MySongs;

var
  Song: TSong;
  Tags: array of string = ();

begin
  for Song in Songs do
    System.Insert(Song.Tags, Tags, High(Tags)+1);

  WriteLn(string.Join(', ', Tags));
end.
