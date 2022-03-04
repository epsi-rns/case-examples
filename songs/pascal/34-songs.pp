{$mode objFPC}
Uses
  CThreads, Classes, SysUtils,
  MySenderSong, MyReceiverSong;

var
  Producer : TSenderSong;
  Consumer : TReceiverSong;

begin
  Consumer := TReceiverSong.Create(True);
  Producer := TSenderSong.Create(True, Consumer);

  Producer.Start;
  Consumer.Start;

  Consumer.WaitFor;
  Producer.WaitFor;
end.
