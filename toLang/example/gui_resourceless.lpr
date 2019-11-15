program gui_resourceless;

{$ifdef WIN32}
  {$APPTYPE GUI}
{$ENDIF}
{$mode objfpc}

uses
  Interfaces,
  Forms,
  glob,
  form_Main, uToLang;

var
  f_main: Tform_main;

begin

  RequireDerivedFormResource := False;

  //test defaults
  glob.toLangInst1 := tToLang.Create();
  // test loading from ini file
  glob.toLangInst2 := tToLang.Create('lang/Russian');
  //test defaults with instance name
  glob.toLangInstWithName := tToLang.Create('','glob.toLangInstWithName');
  writeln('toLangInst1.Get("AppName"): ', toLangInst1.Get('AppName'));
  writeln('toLangInst2.Get("AppName"): ', toLangInst2.Get('AppName'));
  writeln('toLangInst1.Get("Close"): ', toLangInst1.Get('Close'));
  writeln('toLangInst2.Get("Close"): ', toLangInst2.Get('Close'));
  //test hinting missing keys
  toLangInst1.logMissing:=true;
  toLangInst1.Get('missingKey');
  toLangInst2.logMissing:=true;
  toLangInst2.Get('missingKey2');
  toLangInstWithName.logMissing:=true;
  toLangInstWithName.Get('missingKey3');




  Application.Initialize;

  Application.CreateForm(Tform_main, f_main);


  Application.Run;

end.
