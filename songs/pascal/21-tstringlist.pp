uses Classes;

var
  SL : TStringList;
begin
  SL := TStringList.Create; 
  with SL do 
  begin
    Delimiter := ':';
    Duplicates := dupIgnore;
    DelimitedText := 'rock:jazz:rock:pop:pop';
    Delimiter := '|';
    WriteLn(DelimitedText);
  end;
end.
