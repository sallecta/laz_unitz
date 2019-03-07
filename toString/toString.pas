unit toString;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils,
  Forms{TCloseAction},LCLType{HWND};

function ts(inVar: Integer): string;
function ts(inVar: Boolean): string;overload;
function ts(inVar: TCloseAction): string;overload;
function ts(inVar: HWND): string;overload;
function ts(inVar: Pointer): string;overload;
function ts(inVar: Int64): string;overload;

implementation

function ts(inVar: Integer): string;
begin exit(intToStr(inVar)); end;
function ts(inVar: Boolean): string;overload;
begin exit(BoolToStr(inVar, True)); end;
function ts(inVar: TCloseAction): string;overload;
begin exit(IntToStr(Qword(inVar))); end;
function ts(inVar: HWND): string;overload;
begin exit(IntToStr(Word(inVar))); end;
function ts(inVar: Pointer): string;overload;
//begin exit(IntToStr(PInteger(inVar)^));
begin exit(Format('%p', [inVar])+'.'); end;
function ts(inVar: TDate): string;overload;
begin exit(DateToStr(inVar)); end;
function ts(inVar: Int64): string;overload;
begin exit(IntToStr(inVar)); end;

end.
