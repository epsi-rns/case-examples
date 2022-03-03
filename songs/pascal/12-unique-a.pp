{$mode objfpc}{$H+}
uses SysUtils;

type TTags = array of string;
const Tags : TTags =
  ('rock', 'jazz', 'rock', 'pop', 'pop');

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
var
  Xcld, Tail: TTags;
  Head: string;
begin
  if length(Elements) <= 1 then
    Result := Elements
  else
  begin
    Head := Elements[0];
    Tail := Elements;
    Delete(Tail, 0, 1);

    Xcld := Exclude(Head, Tail);
    Result := Unique(Xcld);
    Insert(Head, Result, 0);
  end
end;

var
  Uniq: TTags;
begin
  Uniq := Unique(Tags);
  WriteLn(string.Join(', ', Uniq));
end.
