uses Classes, SysUtils;

const
  S : ANSIString = 'rock:jazz:rock:pop:pop';

var
  S1 : TStrings;
  S2, S3 : ANSIString;
  SA : TStringArray;
begin
  SA := S.Split(':');

  S1 := TStringList.Create;  
  S1.AddStrings(SA);

  S2 := S1.GetText();
  S3 := StringReplace(s2,
    sLineBreak, ':',[rfReplaceAll]);
  WriteLn(S3);

  S1.Free;
end.
