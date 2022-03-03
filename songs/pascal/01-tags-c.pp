{$mode objfpc}
{$H+}
uses SysUtils;

const
  Tags : array of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');
var
  S: string = '';

begin 
  WriteLn(S.Join(', ', Tags));
end.

