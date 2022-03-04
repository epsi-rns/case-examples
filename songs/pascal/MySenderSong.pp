{$mode objFPC}
unit MySenderSong;

interface
Uses
  CThreads, Classes, SysUtils,
  MySongs, MyReceiverSong;

type
  TSenderSong = class(TThread)
  private
    Messages: TStringArray;
    Consumer: TReceiverSong;
  protected
    procedure Execute; override;
  public
    Constructor Create(
      CreateSuspended : boolean;
      Receiver: TReceiverSong);
  end;

implementation

Constructor TSenderSong.Create(
  CreateSuspended : boolean;
  Receiver: TReceiverSong);
var Song: TSong;
begin
  Messages := [];
  for Song in Songs do
    Insert(Song.Tags, Messages, High(Messages)+1);

  Consumer := Receiver;

  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TSenderSong.Execute;
var  Tag : string;
begin
  for Tag in Messages do
    Consumer.Msg := Tag;
  Consumer.SetStop();
end;

end.
