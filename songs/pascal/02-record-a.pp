uses SysUtils;

type TSong = record
  Title : ANSIString;
  Tags  : array of ANSIString;
end;

var Song : TSong;
begin 
  with Song do
  begin
    Title := 'Cantaloupe Island';
    Tags  := ['60s', 'jazz'];
  end;
  Write(Song.Title + ': ');
  WriteLn(ANSIString.Join(', ', Song.Tags));
end.
