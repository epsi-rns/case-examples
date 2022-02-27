{$mode objfpc}
{$H+}
uses SysUtils;

const
  tags : array of string =
    ('rock', 'jazz', 'rock', 'pop', 'pop');
var
  s: string = '';

begin 
  writeln(s.join(', ', tags));
end.

