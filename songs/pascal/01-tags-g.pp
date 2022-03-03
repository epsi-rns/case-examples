uses Classes, SysUtils;

const
  S : ANSIString = 'rock:jazz:rock:pop:pop';

var
  SL : TStrings;
  SA : TStringArray;
begin
  SL := TStringList.Create;  
  SL.AddStrings(S.Split(':'));

  SA := SL.ToStringArray(0, 4);
  WriteLn(AnsiString.Join(', ', SA) + '.');

  SL.Free;
end.
