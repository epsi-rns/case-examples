{$mode objFPC}
unit MyReceiverSong;

interface
Uses CThreads, Classes, SysUtils;

type
  TReceiverSong = class(TThread)
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

implementation

constructor TReceiverSong.Create(
  CreateSuspended : boolean);
begin
  Messages := TStringList.Create;
  isStop := false;

  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TReceiverSong.SetStop();
begin
  isStop := true;
end;

procedure TReceiverSong.SetMessage(msg: string);
begin
  Messages.Add(Msg);
end;

function TReceiverSong.GetMessage: string;
begin
  Result := Messages[0];
  Messages.Delete(0);
end;

procedure TReceiverSong.Execute;
var
  SL : TStringList;
  SR : String;
begin
  SL := TStringList.Create;
  SL.Duplicates := dupIgnore;
  SL.Sorted := true;

  repeat
    if Messages.Count > 0 then
      SL.Add(Msg);
  until (isStop and (Messages.Count = 0));

  SL.Delimiter := '|';
  SR := StringReplace(
    SL.DelimitedText, '|', ', ',
    [rfReplaceAll, rfIgnoreCase]);
  WriteLn(SR);
end;

end.



