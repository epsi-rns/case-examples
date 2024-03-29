uses MySongListBase, MySongs;

var
  TS: TSongListBase;
  ASong : PSong;
  Song : MySongs.TSong;
begin
  TS := TSongListBase.create;
  for Song in Songs do begin
    ASong  := new(PSong);
    ASong^ := MySongListBase.TSong(Song);
    TS.Add(ASong);
  end;

  WriteLn(TS[2]^.Title);

  TS.Free;
end.


