{$mode objFPC}
unit MyThread;

interface
Uses CThreads, Classes;

type
  TMyThread = class(TThread)
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
  end;

implementation

constructor TMyThread.Create(CreateSuspended : boolean);
begin
  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TMyThread.Execute;
begin
  WriteLn('In thread');
end;

end.
