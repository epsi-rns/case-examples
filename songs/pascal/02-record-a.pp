uses SysUtils;

type TSong = record
  title : ansistring;
  tags  : array of ansistring;
end;

var
  song : TSong;

begin 
  with song do
  begin
    title := 'Cantaloupe Island';
    tags  := ['60s', 'jazz'];
  end;
  write(song.title + ': ');
  writeln(ansistring.join(', ', song.tags));
end.
