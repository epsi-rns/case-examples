const
  tags : array [0..4] of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');
var
  i: integer;

begin
  for i := 0 to 4 do
    write(tags[i] + ' ');
  writeln();
end.
