uses MyThread;

var
  AThread : TMyThread;
begin
  // This way it doesn't start automatically
  AThread := TMyThread.Create(True); 
  AThread.Start;
end.

