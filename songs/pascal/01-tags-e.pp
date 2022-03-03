function DumpArray(Tags: array of string): string;
var
  Index, Last: integer;
  S: string = '';
begin
  Last := length(Tags)-1;
  for Index := 0 to Last do
  begin
    S := S + Tags[Index];
    if Index<>Last then
      S := S + ', '
    else 
      S := S + '.';
  end;
  Result := S;
end;

const
  Tags : array of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');

begin
  WriteLn(DumpArray(Tags));
end.
