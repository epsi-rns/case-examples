uses MySongListBase, MySongs, MySongsHelper;

var TS: TSongListBase;
begin
  TS := TSongListBase.create;
  ImportMySongs(MySongs.Songs, TS);
  WriteLn(TS[2]^.Title);
  TS.Free;
end.


