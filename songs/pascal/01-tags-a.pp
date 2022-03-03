const
  Tags : array [0..4] of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');
var
  I: integer;

begin
  for I := 0 to 4 do
    Write(Tags[I] + ' ');
  WriteLn();
end.
