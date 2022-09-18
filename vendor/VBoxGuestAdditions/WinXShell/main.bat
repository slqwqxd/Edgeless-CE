if "x%_WINXSHELL_COPIED%"=="x1" goto :EOF
call X2X
ren "%X_PF%\WinXShell\WinXShell_%WB_PE_ARCH%.exe" WinXShell.exe
del /q "%X_PF%\WinXShell\WinXShell_*.exe"

if "x%WB_PE_LANG%"=="xzh-CN" (
    copy /y "%X_PF%\WinXShell\WinXShell.zh-CN.jcfg" "%X_PF%\WinXShell\WinXShell.jcfg"
    copy /y "%X_PF%\WinXShell\WinXShell.zh-CN.lua" "%X_PF%\WinXShell\WinXShell.lua"
    del /q "%X_PF%\WinXShell\WinXShell.zh-CN.*
)
set _WINXSHELL_COPIED=1
