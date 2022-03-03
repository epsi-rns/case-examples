uses SysUtils;

const
  Tags : array of ANSIString =
    ('rock', 'jazz', 'rock', 'pop', 'pop');

begin 
  WriteLn(ANSIString.Join(', ', Tags));
end.

