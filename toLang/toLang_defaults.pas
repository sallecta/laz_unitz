unit toLang_defaults;

{$mode objfpc}

interface

procedure createDefaults(objinst: TObject);

implementation

uses uToLang;

procedure createDefaults(objinst: TObject);
begin
  tuToLang(objinst).Add('AppName', 'tolangAppName');
  tuToLang(objinst).Add('Close', '');
end;

end.
