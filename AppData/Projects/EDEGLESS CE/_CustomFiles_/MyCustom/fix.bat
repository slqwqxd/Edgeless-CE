reg add "HKLM\SOFTWARE\Classes\.wcs" /f /ve /t REG_SZ /d "wcsfile"
reg add "HKLM\SOFTWARE\Classes\wcsfile" /f /ve /t REG_SZ /d "WCS 脚本文件"
reg add "HKLM\SOFTWARE\Classes\wcsfile\DefaultIcon" /f /ve /t REG_SZ /d "%SystemRoot%\SYSTEM32\PECMD.EXE"
reg add "HKLM\SOFTWARE\Classes\wcsfile\shell\open\command" /f /ve /t REG_SZ /d "%SystemRoot%\SYSTEM32\PECMD.EXE LOAD "%%L""