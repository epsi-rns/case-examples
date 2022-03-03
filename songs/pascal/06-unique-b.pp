{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;

function IsExist(
  Element: string; Tags: TTags): boolean;
var Tag: string;
begin
  Result := false;
  for Tag in Tags do
    if (Tag = Element) then Result := true;
end;

var
  Song  : TSong;
  Tags  : TTags = ();
  Unique: TTags = ();
  Tag   : string;

begin
  for Song in Songs do
    Insert(Song.Tags, Tags, High(Tags)+1);

  for Tag in tags do
  begin
    if (not IsExist(Tag, Unique)) then
      Insert(Tag, Unique, High(Unique)+1);
  end;

  WriteLn(string.Join(', ', Unique));
end.
