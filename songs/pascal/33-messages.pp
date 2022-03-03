{$mode objFPC}
Uses CThreads, Classes, SysUtils;

type
  TSender = class(TThread)
  private
    Messages: TStringArray;
  protected
    procedure Execute; override;
  public
    Constructor Create(
      CreateSuspended : boolean;
      msgs: TStringArray);
  end;

  TReceiver = class(TThread)
  private
    Messages  : TStringList;
    isStop    : boolean;
  protected
    procedure Execute; override;
    procedure SetMessage(msg: string);
    function GetMessage: string;
  public
    constructor Create(
      CreateSuspended : boolean);
    procedure SetStop();
    property Msg: string
      read GetMessage write SetMessage;
  end;

var
  Producer : TSender;
  Consumer : TReceiver;

constructor TSender.Create(
  CreateSuspended : boolean;
  msgs: TStringArray);
begin
  Messages := msgs;
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

constructor TReceiver.Create(
  CreateSuspended : boolean);
begin
  Messages := TStringList.Create;
  isStop := false;

  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TReceiver.SetMessage(msg: string);
begin
  Messages.Add(Msg);
end;

procedure TReceiver.SetStop();
begin
  isStop := true;
end;

function TReceiver.GetMessage: string;
begin
  Result := Messages[0];
  Messages.Delete(0);
end;

procedure TReceiver.Execute;
begin
  repeat
    if Messages.Count > 0 then
      WriteLn('In Receiver Thread : ' + Msg);
  until (isStop and (Messages.Count = 0));
  WriteLn('Quit Receiver');
end;

var
  Tags : TStringArray =
    ('60s', 'jazz', '60s', 'rock',
     '70s', 'rock', '70s', 'pop');
begin
  Producer := TSender.Create(True, Tags); 
  Consumer := TReceiver.Create(True); 

  Producer.Start;
  Consumer.Start;

  Producer.WaitFor;
  Consumer.WaitFor;
end.
