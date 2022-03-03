{$mode objFPC}

uses 
  SysUtils, MySongs, MySongsHelper,
  MySongListBase, MySongList3;

var
  TS: TSongList3;
begin
  TS := TSongList3.create;
  ImportMySongs(Songs, TS);

  WriteLn(ANSIString.Join(
    ', ', TS.GetUniqueTags));

  TS.Free;
end.



