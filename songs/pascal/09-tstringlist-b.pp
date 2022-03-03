uses Classes, SysUtils;

var
  SL : TStringList;
  SR : String;
begin
  SL := TStringList.Create; 

  with SL do begin
    Duplicates := dupIgnore;
    Sorted := true;

    Delimiter := ':';
    DelimitedText := 'rock:jazz:rock:pop:pop';

    Delimiter := '|';
    WriteLn(DelimitedText);

    LineBreak := ', ';
    WriteLn(Text);

    SR := StringReplace(
      DelimitedText, '|', ', ',
      [rfReplaceAll, rfIgnoreCase]);
    WriteLn(SR);
  end;
  
  SL.Free;
end.
