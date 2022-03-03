{$mode objfpc}
unit MySongList3;

interface
uses Classes, SysUtils, MySongListBase;

type
  TSongList3 = class(TSongListBase)
  public
    function GetUniqueTags(): TTags;
  end;

implementation

function TSongList3.GetUniqueTags(): TTags;
var
  SL : TStringList;
  ASong  : PSong;
  Tag : ANSIString;
begin
  SL := TStringList.Create;
  SL.Duplicates := dupIgnore;
  SL.Sorted := true;

  for ASong in Self do
    for Tag in ASong^.Tags do
      SL.Add(Tag);

  Result := SL.ToStringArray(0, Count-1);

  SL.Free;
end;

end.

