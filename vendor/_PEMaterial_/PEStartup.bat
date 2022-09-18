--[=[ 2>nul
rem -- ==================== batch script ====================
set "f0=%~f0"&&set "dp0=%~dp0"&&set "_Loc=%dp0%"
call :%1
goto :EOF


:BeforeShell

if exist "%dp0%wallpaper.jpg" (
    copy /y "%dp0%wallpaper.jpg" "%windir%\Web\wallpaper\img0.jpg"
    start WinXShell.exe -code "app:call('Desktop::SetWallpaper',[[%windir%\Web\wallpaper\img0.jpg]])"
)

xcopy /E /Y "%dp0%Program Files\*.*" "%ProgramFiles%\"

ren "%ProgramFiles%\Notepad3\notepad3_x%_V8664%.exe" Notepad3.exe
del /f /q "%ProgramFiles%\Notepad3\notepad3_x*.exe"
reg import "%ProgramFiles%\Notepad3\notepad3.reg"

rem assoc pdf file
ftype pdffile="%dp0%PortableApps\SumatraPDF\SumatraPDF-%_V3264%.exe" "%%1"
reg add HKEY_CLASSES_ROOT\pdffile\DefaultIcon /ve /d "%dp0%PortableApps\SumatraPDF\SumatraPDF-%_V3264%.exe,1" /f
assoc.pdf=pdffile

rem install calc.exe
if not exist "%Windir%\System32\calc.exe" (
    copy /y "%dp0%PortableApps\Calc\calc%_V-x64%.exe" "%Windir%\System32\calc.exe"
)

start /wait WinXShell.exe -script "%f0%"
goto :EOF

:PostShell
if not "x%USERNAME%"=="xSYSTEM" (
    start WinXShell.exe -code "app:call('Desktop::SetWallpaper', [[%windir%\Web\wallpaper\img0.jpg]])"
)
start /wait WinXShell.exe -script "%f0%"
goto :EOF
]=]

--- -- ====================  lua script  ====================
local dp0 = os.getenv('dp0')

local function AppToDesk(path, arch)
   local name = path:match('([^\\]+)$')
   LINK('%Desktop%\\' .. name .. '.lnk', dp0 .. 'PortableApps\\' .. path .. arch .. '.exe')
end

function BeforeShell()
  -- LINK([[%Desktop%\BOOTICE.lnk]], dp0 ..[[PortableApps\BOOTICE\BOOTICEx64.exe]])

  LINK([[%Desktop%\Install Office2007.lnk]], dp0 .. [[Installers\Office2007\install.cmd]], nil, dp0 .. [[Installers\Office2007\Office.ico]], 0)
  LINK([[%Desktop%\Startup PotPlayer.lnk]], dp0 .. [[Installers\PotPlayer\install.cmd]], nil, dp0 .. [[Installers\PotPlayer\Pot.ico]], 0)
  AppToDesk('BOOTICE\\BOOTICE', 'x%_V8664%')
  AppToDesk('CPU-Z\\cpuz', '_x%_V3264%')
  AppToDesk('NTPWEdit\\ntpwedit', '%_V64%')
  AppToDesk('SumatraPDF\\SumatraPDF', '-%_V3264%')
  AppToDesk('WinNTSetup\\WinNTSetup', '_x%_V8664%')
  AppToDesk('TeamViewer\\TeamViewer', '')
end

function PostShell()
  Startmenu:Pin(dp0 .. [[PortableApps\BOOTICE\BOOTICEx%_V8664%.exe]])
  Taskbar:Pin(dp0 .. [[PortableApps\Everything\Everything.exe]])
end

local function main()
  local phase = os.getenv('STARTUP_PHASE')
  if phase then load(phase .. '()')() end
end
main()
