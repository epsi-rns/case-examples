{$mode objFPC}

uses 
  SysUtils, MySongs, MySongsHelper,
  MySongListBase, MySongList2;

var
  TS: TSongList2;
  SA : TStringArray;
begin
  TS := TSongList2.create;
  ImportMySongs(Songs, TS);

  WriteLn(TS[2]^.Title);
  writeLn(TS.ItemsTags[1][0]);

  SA := TS.GetAllTags();
  WriteLn(ANSIString.Join(', ', SA));

  WriteLn(ANSIString.Join(
    ', ', TS.GetUniqueTags));

  TS.Free;
end.



