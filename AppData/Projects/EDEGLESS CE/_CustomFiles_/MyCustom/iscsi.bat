call AddFiles %0 :end_files
goto :end_files

\Windows\inf\iscsi.inf
\Windows\drivers\msiscsi.sys

@windows\system32\
iscsicli.exe
iscsicpl.dll
iscsicpl.exe
iscsidsc.dll
iscsied.dll
iscsiexe.dll
iscsilog.dll
iscsium.dll
iscsiwmi.dll
iscsiwmiv2.dll

@windows\system32\zh-CN\
iscsicli.exe.mui
iscsicpl.dll.mui
iscsicpl.exe.mui
iscsidsc.dll.mui
iscsiexe.dll.mui

:end_files

rem REGEDIT /s iscsi.reg
reg import iscsi.reg
