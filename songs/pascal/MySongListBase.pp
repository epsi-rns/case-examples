{$mode objfpc}{$H+}
unit MySongListBase;

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
  TSongListBase = class(TFPList)
  protected
    function Get(Index: integer): PSong;
  public
    destructor Destroy; override;
    function Add(ASong : PSong): integer;
    property Items[Index: integer]: PSong read Get; default;
  end;

implementation

function TSongListBase.Get(Index: integer): PSong;
begin
  Result := PSong(inherited Get(Index));
end;

function TSongListBase.Add(ASong: PSong): integer;
begin
  Result := inherited Add(ASong);
end;

destructor TSongListBase.Destroy;
var I : integer;
begin
  for I := 0 to Count-1 do begin
    Dispose(Items[I]);
  end;
  inherited Destroy;
end;

end.
