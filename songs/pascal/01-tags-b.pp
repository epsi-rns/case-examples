uses SysUtils;

const
  tags : array of ansistring =
    ('rock', 'jazz', 'rock', 'pop', 'pop');

begin 
  writeln(ansistring.join(', ', tags));
end.

