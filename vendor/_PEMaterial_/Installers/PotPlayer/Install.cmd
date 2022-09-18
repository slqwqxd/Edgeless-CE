--[[ 2>nul

set _VxARCH=x64
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 set _VxARCH=x86
if "%_VxARCH%"=="x64" set _V64=64

start /wait 7z.exe x -aos Windows.7z -o"%windir%\"
start /wait 7z.exe x -aos PotPlayerSetup%_V64%.exe -o"%ProgramFiles%\PotPlayer\"

if exist "%ProgramFiles%\PotPlayer\PotPlayer%_V64%.dll" (
  start "PotPlayer" "%ProgramFiles%\PotPlayer\PotPlayerMini%_V64%.exe"
)

del /q "%Desktop%\Startup PotPlayer.lnk"
start WinXShell.exe -script "%~f0"
goto :EOF
--]]

LINK([[%Desktop%\PotPlayer.lnk]], [[%ProgramFiles%\PotPlayer\PotPlayerMini%_V64%.exe]])
