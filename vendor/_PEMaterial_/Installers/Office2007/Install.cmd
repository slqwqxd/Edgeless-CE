--[[ 2>nul
start /wait 7z.exe x -aos Windows.7z -o"%windir%\"
start /wait 7z.exe x -aos Office2007.7z -o"%ProgramFiles%\"
call cmd.exe /c "%ProgramFiles%\Office2007\INSOFFICE.CMD"
del /q "%Desktop%\Install Office2007.lnk"
start WinXShell.exe -script "%~f0"
goto :EOF
--]]

LINK([[%Desktop%\Word 2007.lnk]], [[%ProgramFiles%\Office2007\WINWORD.EXE]])
LINK([[%Desktop%\Excel 2007.lnk]], [[%ProgramFiles%\Office2007\EXCEL.EXE]])
LINK([[%Desktop%\PowerPoint 2007.lnk]], [[%ProgramFiles%\Office2007\POWERPNT.EXE]])
