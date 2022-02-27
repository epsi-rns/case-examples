{$mode objfpc}{$H+}

unit MySongs;
interface

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

implementation

end.
