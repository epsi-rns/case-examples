const
  tags : array of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');

function dump_array(tags: array of string): string;
var
  index, last: integer;
  s: string = '';
begin
  last := length(tags)-1;
  for index := 0 to last do
  begin
    s := s + tags[index];
    if (index<>last) then
      s := s + ', '
    else 
      s := s + '.';
  end;
  dump_array := s;
end;

begin
  writeln(dump_array(tags));
end.
