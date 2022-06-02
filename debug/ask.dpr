
program Ask;

{$R *.res}

uses
  Winapi.Windows,
  ProcessUtils in '..\Include\ProcessUtils.pas',
  CmdUtils in '..\Include\CmdUtils.pas',
  MessageDialog in '..\Include\MessageDialog.pas',
  SysUtils.Min in '..\Include\SysUtils.Min.pas';

resourcestring
  CAPTION = 'Execution Master: approval is required';
  VERB = 'Do you want to run this program?';
  YES_KEY = '/yes'; // don't ask the user

procedure Run;
begin
  if ParamCount = 0 then
  begin
    ExitCode := ERROR_INVALID_PARAMETER;
    Exit;
  end;

  if RunIgnoringIFEOAndWait(ParamsStartingFrom(1)) = ERROR_ELEVATION_REQUIRED
    then RunElevatedAndWait(ParamsStartingFrom(1));
end;

begin
  ExitCode := STATUS_DLL_INIT_FAILED; // Run overwrites it on success

  { User can't normally interact with Session 0 (except UI0Detect, but we
    can't rely on it, and it also doesn't cover \Winlogon Desktop), so we
    automatically accept "Yes" in that case. If you want "No" — use Deny.exe
    instead. }
  if IsZeroSession or ParentRequestedElevation then
    Run
  else if ShowMessageYesNo(CAPTION, VERB, ParamsStartingFrom(1), miWarning) =
    IDYES then
    Run;
end.