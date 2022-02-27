uses Classes, SysUtils;

var
  s, t : ansistring;
  tags : array of ansistring;
begin
  s := 'rock:jazz:rock:pop:pop';
  tags := s.split(':');
  writeln(t.join(', ', tags) + '.');
end.

