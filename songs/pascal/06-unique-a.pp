{$mode objfpc}{$H+}
uses SysUtils, MySongs;
type TTags = array of string;
var
  Song  : TSong;
  Tags  : TTags = ();
  Unique: TTags = ();
  Tag, Uni : string;
  Exist : boolean;

begin
  for Song in Songs do
    insert(Song.Tags, Tags, High(Tags)+1);

  for Tag in Tags do
  begin
    Exist := false;
    for Uni in Unique do
      if (Tag = Uni) then Exist := true;
    if (not Exist) then
      Insert(Tag, Unique, High(Unique)+1);
  end;

  WriteLn(string.Join(', ', Unique));
end.
