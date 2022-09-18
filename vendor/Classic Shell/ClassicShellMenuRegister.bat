reg import "%ProgramFiles%\Classic Shell\ClassicShellMenuSettings.reg"

if not exist "%SystemRoot%\explorer.exe" (
  reg add HKCU\SOFTWARE\IvoSoft\ClassicStartMenu\Settings /v EnableStartButton /t REG_DWORD /d 1 /f
)

regsvr32 /s "%ProgramFiles%\Classic Shell\ClassicStartMenuDLL.dll"

if exist "%SystemRoot%\System32\StartMenuHelper32.dll" (
  regsvr32 /s "%SystemRoot%\System32\StartMenuHelper32.dll"
)

if exist "%SystemRoot%\System32\StartMenuHelper64.dll" (
  regsvr32 /s "%SystemRoot%\System32\StartMenuHelper64.dll"
)

start "ClassicStartMenu" "%ProgramFiles%\Classic Shell\ClassicStartMenu.exe"
