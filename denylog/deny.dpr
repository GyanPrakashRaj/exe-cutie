program Deny;

{$R *.res}

uses
  Winapi.Windows,
  ProcessUtils in '..\Include\ProcessUtils.pas',
  CmdUtils in '..\Include\CmdUtils.pas',
  MessageDialog in '..\Include\MessageDialog.pas',
  SysUtils.Min in '..\Include\SysUtils.Min.pas';

const
  KEY_QUIET = '/quiet'; // Parameter: do not show dialog

resourcestring
  CAPTION = 'Execution Master: an attempt to run a blocked program';
  VERB = 'This program is not allowed to run:';

begin
  ExitCode := STATUS_DLL_INIT_FAILED;
  if ParamStr(1) = KEY_QUIET then
    Exit;
  if not IsZeroSession then
    ShowMessageOk(CAPTION, VERB, ParamsStartingFrom(1), miError);
end.