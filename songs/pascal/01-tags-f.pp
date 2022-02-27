uses Classes, SysUtils;

const
  s : AnsiString = 'rock:jazz:rock:pop:pop';

var
  s1 : TStrings;
  s2, s3 : AnsiString;
  sa : TStringArray;
begin
  sa := s.split(':');

  s1 := TStringList.Create;  
  s1.AddStrings(sa);

  s2 := s1.GetText();
  s3 := StringReplace(s2,
    sLineBreak, ':',[rfReplaceAll]);
  writeln(s3);

  s1.Free;
end.
