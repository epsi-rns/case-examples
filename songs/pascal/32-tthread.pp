{$mode objFPC}
Uses CThreads, Classes;

type
  TMyThread = class(TThread)
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
  end;

constructor TMyThread.Create(CreateSuspended : boolean);
begin
  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
end;

procedure TMyThread.Execute;
begin
  WriteLn('In thread');
end;

var
  MyThread : TMyThread;
begin
  // This way it doesn't start automatically
  MyThread := TMyThread.Create(True); 
  MyThread.Start;
end.
