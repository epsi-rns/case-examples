{$mode objfpc}{$H+}
unit TSongs;

interface
uses Classes, SysUtils;

type
  TTags = array of string;

  PSong=^TSong;

  TSong = record
    Title : string;
    Tags  : TTags;
  end;

type
  TSongList = class(TFPList)
  private
    function Get(Index: integer): PSong;
    function GetTags(Index: integer): TTags;
  public
    destructor Destroy; override;
    function Add(ASong : PSong): integer;
    function GetAllTags(): TTags;
    function GetUniqueTags(): TTags;
    property Items[Index: integer]: PSong read Get; default;
    property ItemsTags[Index: integer]: TTags read GetTags;
  end;

implementation

function TSongList.Get(Index: integer): PSong;
begin
  Result := PSong(inherited Get(Index));
end;

function TSongList.Add(ASong: PSong): integer;
begin
  Result := inherited Add(ASong);
end;

destructor TSongList.Destroy;
var I : integer;
begin
  for I := 0 to Count-1 do begin
    Dispose(Items[I]);
  end;
  inherited Destroy;
end;

function TSongList.GetTags(Index: integer): TTags;
begin
  Result := Get(Index)^.Tags;
end;

function TSongList.GetAllTags(): TTags;
var ASong : PSong;
begin
  Result := [];
  for ASong in Self do
    System.Insert(
      ASong^.Tags, Result, High(Result)+1);
end;

function TSongList.GetUniqueTags(): TTags;
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

