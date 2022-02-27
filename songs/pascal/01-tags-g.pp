uses Classes, SysUtils;

const
  s : AnsiString = 'rock:jazz:rock:pop:pop';

var
  sl : TStrings;
  sa : TStringArray;
begin
  sl := TStringList.Create;  
  sl.AddStrings(s.split(':'));

  sa := sl.ToStringArray(0, 4);
  writeln(AnsiString.join(', ', sa) + '.');

  sl.Free;
end.
