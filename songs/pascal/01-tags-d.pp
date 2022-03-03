uses Classes, SysUtils;

var
  S, T : ANSIString;
  Tags : array of ANSIString;
begin
  S := 'rock:jazz:rock:pop:pop';
  Tags := S.Split(':');
  WriteLn(T.Join(', ', Tags) + '.');
end.

