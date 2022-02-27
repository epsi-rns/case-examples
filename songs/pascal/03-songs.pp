{$mode objfpc}{$H+}
uses SysUtils;

type TSong = record
  title : string;
  tags  : array of string;
end;

const
  songs : array of TSong =
  ( ( title : 'Cantaloupe Island';
      tags  : ('60s', 'jazz') ),
    ( title : 'Let It Be';
      tags  : ('60s', 'rock') ),
    ( title : 'Knockin'' on Heaven''s Door';
      tags  : ('70s', 'rock') ),
    ( title : 'Emotion';
      tags  : ('70s', 'pop') ),
    ( title : 'The River';
      tags  : () )
  );

var
  song: TSong;

begin
  for song in songs do
  begin
    write(format('%-20s',
      [song.title]) + ': ');
    writeln(string.join(
      ', ', song.tags));
  end;
end.
