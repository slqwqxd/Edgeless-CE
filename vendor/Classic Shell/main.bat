xcopy /E /Y "Classic Shell\*.*" "%X_PF%\Classic Shell\"

if "%WB_PE_ARCH%"=="x64" (
  del /q /a "%X_PF%\Classic Shell\StartMenuHelper32.dll"
  xcopy /E /Y "Classic Shell_x64\*.*" "%X_PF%\Classic Shell\"
)

move "%X_PF%\Classic Shell\StartMenuHelper*.dll" "%X_SYS%\"

xcopy /E /Y "CustomSkins\*.*" "%X_PF%\Classic Shell\Skins\"

copy /y ClassicShellMenuSettings.reg "%X_PF%\Classic Shell\"
copy /y *.png "%X_PF%\Classic Shell\"

copy /y ClassicShellMenuRegister.bat "%X_BeforeShell%\"

if "x%opt[shell.light_theme]%"=="xtrue" (
  ren "%X_PF%\Classic Shell\Start.png" Start_dark.png
  ren "%X_PF%\Classic Shell\Start_light.png" Start.png
)

