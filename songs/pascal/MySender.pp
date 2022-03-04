{$mode objFPC}
unit MySender;

interface
Uses CThreads, Classes, SysUtils, MyReceiver;

type
  TSender = class(TThread)
  private
    Messages: TStringArray;
    Consumer: TReceiver;
  protected
    procedure Execute; override;
  public
    Constructor Create(
      CreateSuspended : boolean;
      msgs: TStringArray;
      Receiver: TReceiver);
  end;

implementation

Constructor TSender.Create(
  CreateSuspended : boolean;
  msgs: TStringArray;
  Receiver: TReceiver);
begin
  Messages := msgs;
  Consumer := Receiver;

  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TSender.Execute;
var  Tag : string;
begin
  for Tag in Messages do begin
    WriteLn('In Sender Thread   : ' + Tag);
    Consumer.Msg := Tag;
  end;
  Consumer.SetStop();

  WriteLn('Quit Sender');
end;

end.
