{$mode objfpc}{$H+}
uses SysUtils;

type TSong = record
  title : string;
  tags  : array of string;
end;

const
  song : TSong =
  ( title : 'Cantaloupe Island';
    tags  : ('60s', 'jazz') );

begin 
  write(song.title + ': ');
  writeln(string.join(', ', song.tags));
end.
