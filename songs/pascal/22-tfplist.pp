uses SysUtils, TSongs, MySongs;

var
  TS: TSongList;
  ASong : PSong;
  Song : TSong;
  SA : TStringArray;
begin
  TS := TSongList.create;
  for Song in Songs do begin
    ASong  := new(PSong);
    ASong^ := TSONGS.TSong(Song);
    TS.Add(ASong);
  end;

  WriteLn(TS[2]^.Title);
  writeLn(TS.ItemsTags[1][0]);

  SA := TS.GetAllTags();
  WriteLn(ANSIString.Join(', ', SA));

  WriteLn(ANSIString.Join(
    ', ', TS.GetUniqueTags));

  TS.Free;
end.


