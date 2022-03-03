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

var Xcld: TTags;
begin
  Xcld := Exclude('rock', Tags);
  WriteLn(string.join(', ', Xcld));
end.
