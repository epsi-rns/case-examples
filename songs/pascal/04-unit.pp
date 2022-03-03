{$mode objfpc}{$H+}
uses SysUtils, MySongs;
var Song: TSong;

begin
  for Song in Songs do
  begin
    Write(format('%-20s',
      [Song.Title]) + ': ');
    WriteLn(string.Join(
      ', ', Song.Tags));
  end;
end.
