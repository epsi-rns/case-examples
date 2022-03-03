{$mode objfpc}{$H+}
uses SysUtils, MySongs;

type TTags = array of string;

function Exclude(
  Value: string; Elements: TTags): TTags;
var Element : string;
begin
  Result := [];
  for Element in Elements do
    if Value <> Element then
      Insert(Element, Result, High(Result)+1);
end;

function Unique(Elements: TTags): TTags;
var Head: string;
begin
  if length(Elements) <= 1 then
    Result := Elements
  else
  begin
    Head := Elements[0];
    Delete(Elements, 0, 1); // tail

    Result := Unique(Exclude(Head, Elements));
    insert(Head, Result, 0);
  end
end;

var
  Song  : TSong;
  Tags  : TTags = ();
begin
  for Song in Songs do
    Insert(Song.Tags, Tags, High(Tags)+1);

  WriteLn(string.Join(', ', Unique(Tags)));
end.
