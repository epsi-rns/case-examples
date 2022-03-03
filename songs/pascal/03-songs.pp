{$mode objfpc}{$H+}
uses SysUtils;

type TSong = record
  Title : string;
  Tags  : array of string;
end;

const
  Songs : array of TSong =
  ( ( Title : 'Cantaloupe Island';
      Tags  : ('60s', 'jazz') ),
    ( Title : 'Let It Be';
      Tags  : ('60s', 'rock') ),
    ( Title : 'Knockin'' on Heaven''s Door';
      Tags  : ('70s', 'rock') ),
    ( Title : 'Emotion';
      Tags  : ('70s', 'pop') ),
    ( Title : 'The River';
      Tags  : () )
  );

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
