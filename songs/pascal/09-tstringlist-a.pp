uses Classes;

var
  SL : TStringList;
begin
  SL := TStringList.Create; 

  with SL do begin
    // If the stringlist is not sorted,
    // the Duplicates setting is ignored. 
    Duplicates := dupIgnore;
    Sorted := true;

    Delimiter := ':';
    DelimitedText := 'rock:jazz:rock:pop:pop';

    Delimiter := '|';
    WriteLn(DelimitedText);
  end;
  
  SL.Free;
end.
