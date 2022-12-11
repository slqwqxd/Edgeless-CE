echo ���ڴ˽ű��б�д���룬�ڱ���boot.wim�䶯ǰ����boot.wim���������޸ġ�

rem �滻ע��� HIVE �ļ�

call :FULLREG DEFAULT
call :FULLREG SOFTWARE
call :FULLREG SYSTEM
call :FULLREG COMPONENTS
call :FULLREG DRIVERS

call AddFiles \Windows\System32\Windows.UI.FileExplorer.dll
call AddFiles \Windows\SysWOW64\msvb*.dll
call AddFiles \Windows\SysWOW64\msvc*.dll
call AddFiles \Windows\SysWOW64\msvcp140_1.dll
call AddFiles \windows\SysWOW64\mfc40.dll
call AddFiles \windows\SysWOW64\mfc40u.dll
call AddFiles \windows\SysWOW64\mfc42.dll
call AddFiles \windows\SysWOW64\mfc42u.dll
call AddFiles \windows\SysWOW64\mfcore.dll
call AddFiles \Windows\SysWOW64\atl*.dll
call AddFiles \Windows\SysWOW64\vcruntime*.dll
call AddFiles \Windows\SysWOW64\vcomp*.dll
call AddFiles \windows\SysWOW64\msvf*.dll
call AddFiles \windows\SysWOW64\msvidc*.dll
call AddFiles \Windows\SysWOW64\fontsub.dll
call AddFiles \Windows\SysWOW64\dxva2.dll
call AddFiles \Windows\SysWOW64\opengl32.dll
call AddFiles \Windows\SysWOW64\glu32.dll
call AddFiles \Windows\SysWOW64\httpapi.dll
call AddFiles \windows\SysWOW64\d3d8.dll
call AddFiles \windows\SysWOW64\d3d8thk.dll
call AddFiles \windows\SysWOW64\d3d9.dll
call AddFiles \windows\SysWOW64\d3d10.dll
call AddFiles \windows\SysWOW64\d3d10_1.dll
call AddFiles \windows\SysWOW64\d3d10warp.dll
call AddFiles \windows\SysWOW64\d3d10core.dll
call AddFiles \windows\SysWOW64\d3d10level9.dll
call AddFiles \windows\SysWOW64\d3d10_1core.dll
call AddFiles \windows\SysWOW64\d3d11.dll
call AddFiles \windows\SysWOW64\d3d12.dll
call AddFiles \windows\SysWOW64\d3dcompiler_47.dll
call AddFiles \windows\SysWOW64\d3d11on12.dll
call AddFiles \windows\SysWOW64\hhctrl.dll
call AddFiles \Windows\SysWOW64\mfc140d.dll
call AddFiles \Windows\SysWOW64\mfc140ud.dll
call AddFiles \Windows\SysWOW64\mfc140.dll
call AddFiles \Windows\SysWOW64\mfc140u.dll
call AddFiles \Windows\SysWOW64\mfc140enu.dll
call AddFiles \Windows\SysWOW64\mfc140chs.dll
call AddFiles \Windows\SysWOW64\cryptui.dll
call AddFiles \Windows\SysWOW64\sfc.dll
call AddFiles \Windows\SysWOW64\sfc_os.dll
call AddFiles \Windows\System32\msvc*.dll
call AddFiles \windows\System32\mfc40.dll
call AddFiles \windows\System32\mfc40u.dll
call AddFiles \windows\System32\mfc42.dll
call AddFiles \windows\System32\mfc42u.dll
call AddFiles \windows\System32\mfcore.dll
call AddFiles \Windows\System32\vcruntime*.dll
call AddFiles \Windows\System32\vcomp*.dll
call AddFiles \Windows\System32\atl*.dll
call AddFiles \Windows\System32\Drivers\fbwf.sys
call AddFiles \Windows\System32\fontsub.dll
call AddFiles \Windows\System32\dxva2.dll
call AddFiles \Windows\System32\opengl32.dll
call AddFiles \Windows\System32\glu32.dll
call AddFiles \Windows\System32\httpapi.dll
call AddFiles \Windows\System32\d3d8.dll
call AddFiles \Windows\System32\d3d8thk.dll
call AddFiles \Windows\System32\d3d9.dll
call AddFiles \Windows\System32\d3d10.dll
call AddFiles \Windows\System32\d3d10_1.dll
call AddFiles \Windows\System32\d3d10_1core.dll
call AddFiles \Windows\System32\d3d10core.dll
call AddFiles \Windows\System32\d3d10level9.dll
call AddFiles \Windows\System32\d3d10warp.dll
call AddFiles \Windows\System32\d3d11.dll
call AddFiles \Windows\System32\d3d11on12.dll
call AddFiles \Windows\System32\d3d12.dll
call AddFiles \Windows\System32\d3dcompiler_47.dll
call AddFiles \Windows\System32\mfc140d.dll
call AddFiles \Windows\System32\mfc140ud.dll
call AddFiles \Windows\System32\mfc140.dll
call AddFiles \Windows\System32\mfc140u.dll
call AddFiles \Windows\System32\mfc140enu.dll
call AddFiles \Windows\System32\mfc140chs.dll
for %%a in (
 \Windows\SysWOW64\advapi32.dll
 \Windows\SysWOW64\amsi.dll
 \Windows\SysWOW64\atlthunk.dll
 \Windows\SysWOW64\AudioSes.dll
 \Windows\SysWOW64\avrt.dll
 \Windows\SysWOW64\BCP47Langs.dll
 \Windows\SysWOW64\BCP47mrm.dll
 \Windows\SysWOW64\bcrypt.dll
 \Windows\SysWOW64\bcryptprimitives.dll
 \Windows\SysWOW64\cfgmgr32.dll
 \Windows\SysWOW64\clbcatq.dll
 \Windows\SysWOW64\coloradapterclient.dll
 \Windows\SysWOW64\combase.dll
 \Windows\SysWOW64\comdlg32.dll
 \Windows\SysWOW64\coml2.dll
 \Windows\SysWOW64\CoreMessaging.dll
 \Windows\SysWOW64\CoreUIComponents.dll
 \Windows\SysWOW64\credui.dll
 \Windows\SysWOW64\crypt32.dll
 \Windows\SysWOW64\cryptbase.dll
 \Windows\SysWOW64\cryptnet.dll
 \Windows\SysWOW64\cryptsp.dll
 \Windows\SysWOW64\cryptui.dll
 \Windows\SysWOW64\d3d11.dll
 \Windows\SysWOW64\d3d9.dll
 \Windows\SysWOW64\DataExchange.dll
 \Windows\SysWOW64\dcomp.dll
 \Windows\SysWOW64\devobj.dll
 \Windows\SysWOW64\dhcpcsvc.dll
 \Windows\SysWOW64\dhcpcsvc6.dll
 \Windows\SysWOW64\directmanipulation.dll
 \Windows\SysWOW64\dnsapi.dll
 \Windows\SysWOW64\dpapi.dll
 \Windows\SysWOW64\dwmapi.dll
 \Windows\SysWOW64\DWrite.dll
 \Windows\SysWOW64\dxgi.dll
 \Windows\SysWOW64\dxva2.dll
 \Windows\SysWOW64\esent.dll
 \Windows\SysWOW64\FWPUCLNT.DLL
 \Windows\SysWOW64\gdi32.dll
 \Windows\SysWOW64\gdi32full.dll
 \Windows\SysWOW64\globinputhost.dll
 \Windows\SysWOW64\glu32.dll
 \Windows\SysWOW64\gpapi.dll
 \Windows\SysWOW64\hid.dll
 \Windows\SysWOW64\httpapi.dll
 \Windows\SysWOW64\iertutil.dll
 \Windows\SysWOW64\imagehlp.dll
 \Windows\SysWOW64\imm32.dll
 \Windows\SysWOW64\InputHost.dll
 \Windows\SysWOW64\IPHLPAPI.DLL
 \Windows\SysWOW64\kernel.appcore.dll
 \Windows\SysWOW64\kernel32.dll
 \Windows\SysWOW64\KernelBase.dll
 \Windows\SysWOW64\ksuser.dll
 \Windows\SysWOW64\midimap.dll
 \Windows\SysWOW64\mlang.dll
 \Windows\SysWOW64\MMDevAPI.dll
 \Windows\SysWOW64\mpr.dll
 \Windows\SysWOW64\msacm32.dll
 \Windows\SysWOW64\msacm32.drv
 \Windows\SysWOW64\msasn1.dll
 \Windows\SysWOW64\mscms.dll
 \Windows\SysWOW64\msctf.dll
 \Windows\SysWOW64\msftedit.dll
 \Windows\SysWOW64\msimg32.dll
 \Windows\SysWOW64\msvcp_win.dll
 \Windows\SysWOW64\msvcrt.dll
 \Windows\SysWOW64\mswsock.dll
 \Windows\SysWOW64\msxml3.dll
 \Windows\SysWOW64\ncrypt.dll
 \Windows\SysWOW64\netapi32.dll
 \Windows\SysWOW64\netutils.dll
 \Windows\SysWOW64\nlaapi.dll
 \Windows\SysWOW64\normaliz.dll
 \Windows\SysWOW64\nsi.dll
 \Windows\SysWOW64\ntasn1.dll
 \Windows\SysWOW64\ntdll.dll
 \Windows\SysWOW64\ntmarta.dll
 \Windows\SysWOW64\ole32.dll
 \Windows\SysWOW64\oleacc.dll
 \Windows\SysWOW64\oleaut32.dll
 \Windows\SysWOW64\opengl32.dll
 \Windows\SysWOW64\pdh.dll
 \Windows\SysWOW64\perfctrs.dll
 \Windows\SysWOW64\perfdisk.dll
 \Windows\SysWOW64\perfos.dll
 \Windows\SysWOW64\perfproc.dll
 \Windows\SysWOW64\powrprof.dll
 \Windows\SysWOW64\profapi.dll
 \Windows\SysWOW64\propsys.dll
 \Windows\SysWOW64\psapi.dll
 \Windows\SysWOW64\rasadhlp.dll
 \Windows\SysWOW64\rpcrt4.dll
 \Windows\SysWOW64\rsaenh.dll
 \Windows\SysWOW64\samcli.dll
 \Windows\SysWOW64\sechost.dll
 \Windows\SysWOW64\secur32.dll
 \Windows\SysWOW64\setupapi.dll
 \Windows\SysWOW64\SHCore.dll
 \Windows\SysWOW64\shell32.dll
 \Windows\SysWOW64\shlwapi.dll
 \Windows\SysWOW64\srvcli.dll
 \Windows\SysWOW64\sspicli.dll
 \Windows\SysWOW64\TextInputFramework.dll
 \Windows\SysWOW64\TextShaping.dll
 \Windows\SysWOW64\twinapi.appcore.dll
 \Windows\SysWOW64\ucrtbase.dll
 \Windows\SysWOW64\UIAutomationCore.dll
 \Windows\SysWOW64\umpdc.dll
 \Windows\SysWOW64\urlmon.dll
 \Windows\SysWOW64\user32.dll
 \Windows\SysWOW64\userenv.dll
 \Windows\SysWOW64\usp10.dll
 \Windows\SysWOW64\uxtheme.dll
 \Windows\SysWOW64\version.dll
 \Windows\SysWOW64\wbem\fastprox.dll
 \Windows\SysWOW64\wbem\wbemprox.dll
 \Windows\SysWOW64\wbem\wbemsvc.dll
 \Windows\SysWOW64\wbemcomn.dll
 \Windows\SysWOW64\wdmaud.drv
 \Windows\SysWOW64\wevtapi.dll
 \Windows\SysWOW64\win32u.dll
 \Windows\SysWOW64\WindowManagementAPI.dll
 \Windows\SysWOW64\Windows.Globalization.dll
 \Windows\SysWOW64\Windows.storage.dll
 \Windows\SysWOW64\Windows.UI.dll
 \Windows\SysWOW64\WindowsCodecs.dll
 \Windows\SysWOW64\winhttp.dll
 \Windows\SysWOW64\wininet.dll
 \Windows\SysWOW64\winmm.dll
 \Windows\SysWOW64\winmmbase.dll
 \Windows\SysWOW64\winspool.drv
 \Windows\SysWOW64\winsta.dll
 \Windows\SysWOW64\wintrust.dll
 \Windows\SysWOW64\WinTypes.dll
 \Windows\SysWOW64\wkscli.dll
 \Windows\SysWOW64\wlanapi.dll
 \Windows\SysWOW64\Wldap32.dll
 \Windows\SysWOW64\wldp.dll
 \Windows\SysWOW64\wmiclnt.dll
 \Windows\SysWOW64\ws2_32.dll
 \Windows\SysWOW64\wtsapi32.dll
) do (
    call AddFiles %%a
)

Del /A /F /Q "%X%\Windows\System32\authui.dll"
Del /A /F /Q "%X%\Windows\System32\zh-CN\authui.dll.mui"
Del /A /F /Q "%X%\Windows\SystemResources\authui.dll.num"

Del /A /F /Q "%X%\Windows\System32\imapi2.dll"
Del /A /F /Q "%X%\Windows\System32\zh-CN\imapi2.dll.mui"
Del /A /F /Q "%X%\Windows\SystemResources\imapi2.dll.num"

rem 删除系统还原
Del /A /F /Q "%X%\Windows\System32\rstrui*"
Del /A /F /Q "%X%\Windows\System32\zh-CN\rstrui*"

rem 删除 驱动验证程序
Del /A /F /Q "%X%\Windows\System32\verifiergui*"
Del /A /F /Q "%X%\Windows\System32\zh-CN\verifiergui*"

rem 删除 Windows 部署服务捕获向导
Del /A /F /Q "%X%\Windows\System32\wdscapture*"
Del /A /F /Q "%X%\Windows\System32\zh-CN\wdscapture*"

rem 删除 灾难恢复
Del /A /F /Q "%X%\Windows\System32\bmrui*"
Del /A /F /Q "%X%\Windows\System32\zh-CN\bmrui*"

rem 删除 修复光盘
Del /A /F /Q "%X%\Windows\System32\recdisc*"
Del /A /F /Q "%X%\Windows\System32\zh-CN\recdisc*"

rem 精简7-ZIP
Del /A /F /Q "%X%\Program Files\7-Zip\7-zip.chm"
Del /A /F /Q "%X%\Program Files\7-Zip\History.txt"
Del /A /F /Q "%X%\Program Files\7-Zip\History.txt"
Del /A /F /Q "%X%\Program Files\7-Zip\License.txt"
Del /A /F /Q "%X%\Program Files\7-Zip\readme.txt"
Del /A /F /Q "%X%\Program Files\7-Zip\Uninstall.exe"

rem 精简PENetwork
for %%f in (
  EULA-AutoIt3.txt
  License.txt
  PENetwork_cs-CZ.lng
  PENetwork_de-DE.lng
  PENetwork_en-US.lng
  PENetwork_es-ES.lng
  PENetwork_es-Hn.lng
  PENetwork_fr-FR.lng
  PENetwork_hu-HU.lng
  PENetwork_it-IT.lng
  PENetwork_ja-JP.lng
  PENetwork_ko-KR.lng
  PENetwork_pl-PL.lng
  PENetwork_pt-BR.lng
  PENetwork_pt-PT.lng
  PENetwork_ru-RU.lng
  PENetwork_sv-SE.lng
  PENetwork_tr-TR.lng
  PENetwork_zh-TW.lng
) do (
  Del /A /F /Q "%X%\Program Files\PENetwork\%%f"
)


goto :EOF

:FULLREG
if exist "%~dp0%1" (
   xcopy /E /Y "%~dp0%1" "%X%\Windows\System32\Config\"
)
goto :EOF
