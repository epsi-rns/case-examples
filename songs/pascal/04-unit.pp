{$mode objfpc}{$H+}
uses SysUtils, MySongs;
var song: TSong;

begin
  for song in songs do
  begin
    write(format('%-20s',
      [song.title]) + ': ');
    writeln(string.join(
      ', ', song.tags));
  end;
end.
