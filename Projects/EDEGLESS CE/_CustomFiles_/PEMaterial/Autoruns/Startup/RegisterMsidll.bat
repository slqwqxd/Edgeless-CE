Regsvr32.exe /s %WinDir%\System32\Msi.dll
if exist "%WinDir%\SysWOW64\Msi.dll" %WinDir%\SysWOW64\Regsvr32.exe /s %WinDir%\SysWOW64\Msi.dll
del /f /q "%~0"
