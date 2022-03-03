{$mode objfpc}{$H+}
uses SysUtils;

type TSong = record
  Title : string;
  Tags  : array of string;
end;

const
  Song : TSong =
  ( Title : 'Cantaloupe Island';
    Tags  : ('60s', 'jazz') );

begin 
  Write(Song.Title + ': ');
  WriteLn(string.Join(', ', Song.Tags));
end.
