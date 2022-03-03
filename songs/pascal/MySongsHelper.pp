unit MySongsHelper;

interface

uses TSongsBase, MySongs;

procedure ImportMySongs(
  Songs: array of MySongs.TSong;
  TS: TSongListBase);

implementation

procedure ImportMySongs(
  Songs: array of MySongs.TSong;
  TS: TSongListBase);
var
  ASong : PSong;
  Song : MySongs.TSong;
begin
  for Song in Songs do
  begin
    ASong  := new(PSong);
    ASong^ := TSongsBase.TSong(Song);
    TS.Add(ASong);
  end;
end;

end.
