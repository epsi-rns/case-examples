Program ThreadTest;

uses
  {$ifdef unix}Cthreads, {$endif} SysUtils;

const
  threadcount = 10;
  stringlen = 10;

var
   finished : longint;

threadvar
   thri : ptrint;

function f(p : pointer) : ptrint;
var
  s : ansistring = '';
begin
{$hints off}{$warnings off}
  Writeln('thread ',longint(p),' started');
  thri:=0;
  while (thri<stringlen) do begin
    s:=s+'1'; { create a delay }
    writeln('thread ',longint(p),' thri ',thri,' Len(S)= ',length(s));
    inc(thri);
  end;
  Writeln('thread ',longint(p),' finished');
  InterLockedIncrement(finished);
  f:=0;
{$hints on}{$warnings on}
end;

var
   i : longint;

Begin
   finished:=0;

   {$hints off}{$warnings off}
   for i:=1 to threadcount do
     BeginThread(@f,pointer(i));
   {$hints on}{$warnings on}

   while finished<threadcount do ;
   Writeln(finished);
End.
