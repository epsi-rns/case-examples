{$mode objFPC}
Uses
  CThreads, Classes, SysUtils,
  MySender, MyReceiver;

var
  Producer : TSender;
  Consumer : TReceiver;

var
  Tags : TStringArray =
    ('60s', 'jazz', '60s', 'rock',
     '70s', 'rock', '70s', 'pop');
begin
  Consumer := TReceiver.Create(True);
  Producer := TSender.Create(True, Tags, Consumer); 

  Producer.Start;
  Consumer.Start;

  Consumer.WaitFor;
  Producer.WaitFor;
end.
