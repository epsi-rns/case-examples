{$mode objfpc}{$H+}
uses SysUtils;

type TTags = array of string;
const Tags : TTags =
  ('rock', 'jazz', 'rock', 'pop', 'pop');

function Exclude(
  const Value: string; Elements: TTags): TTags;
var I  : integer;
begin
  I := High(Elements);
  repeat
    if Elements[I] = Value then
      Delete(Elements, I, 1);
    Dec(i);
  until i < 0;

  Result := Elements;
end;

var Xcld: TTags;
begin
  Xcld := Exclude('rock', Tags);
  WriteLn(string.Join(', ', Xcld));
end.
