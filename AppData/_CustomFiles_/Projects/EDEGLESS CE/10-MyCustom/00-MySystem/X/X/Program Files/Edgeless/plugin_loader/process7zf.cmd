pecmd exec ="%ProgramFiles%\Edgeless\plugin_loader\p7zf.wcs"
if exist X:\Users\load7zf (
rd X:\Users\load7zf
pecmd exec ="%ProgramFiles%\Edgeless\plugin_loader\load.cmd" %1
pecmd load "X:\Program Files\Edgeless\plugin_loader\7zftip.wcs"
exit
)
exit