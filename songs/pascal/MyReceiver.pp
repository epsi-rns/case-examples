{$mode objFPC}
unit MyReceiver;

interface
Uses CThreads, Classes, SysUtils;

type
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
    destructor Destroy; override;
    procedure SetStop();
    property Msg: string
      read GetMessage write SetMessage;
  end;

implementation

constructor TReceiver.Create(
  CreateSuspended : boolean);
begin
  Messages := TStringList.Create;
  isStop := false;

  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

destructor TReceiver.Destroy;
begin
  Messages.Free;
  inherited Destroy;
end;

procedure TReceiver.SetMessage(msg: string);
begin
  Messages.Add(Msg);
end;

function TReceiver.GetMessage: string;
begin
  Result := Messages[0];
  Messages.Delete(0);
end;

procedure TReceiver.SetStop();
begin
  isStop := true;
end;

procedure TReceiver.Execute;
begin
  repeat
    if Messages.Count > 0 then
      WriteLn('In Receiver Thread : ' + Msg);
  until (isStop and (Messages.Count = 0));
  WriteLn('Quit Receiver');
end;

end.
