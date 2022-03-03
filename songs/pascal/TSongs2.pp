{$mode objfpc}
unit TSongs2;

interface
uses Classes, SysUtils, TSongsBase;

type
  TSongList2 = class(TSongListBase)
  private
    function GetTags(Index: integer): TTags;
  public
    function GetAllTags(): TTags;
    function GetUniqueTags(): TTags;
    property ItemsTags[Index: integer]: TTags read GetTags;
  end;

implementation

function TSongList2.GetTags(Index: integer): TTags;
begin
  Result := Get(Index)^.Tags;
end;

function TSongList2.GetAllTags(): TTags;
var ASong : PSong;
begin
  Result := [];
  for ASong in Self do
    System.Insert(
      ASong^.Tags, Result, High(Result)+1);
end;

function TSongList2.GetUniqueTags(): TTags;
var 
  Unique: TTags = ();
  Tag, Uni : string;
  Exist : boolean;
begin
  for Tag in GetAllTags() do
  begin
    Exist := false;
    for Uni in Unique do
      if (Tag = Uni) then Exist := true;
    if (not Exist) then
      System.Insert(Tag, Unique, High(Unique)+1);
  end;

  Result := Unique;
end;

end.

