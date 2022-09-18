--[=[ 2>nul
rem -- ==================== batch script ====================
@echo off
set "f0=%~f0"&&set "dp0=%~dp0"

cd /d "%~dp0"

set WINXSHELL=WinXShell.exe
set x8664=x64
if not "x%PROCESSOR_ARCHITECTURE%"=="xAMD64" set x8664=x86
if not exist %WINXSHELL% set WINXSHELL=WinXShell_%x8664%.exe

rem one line code
%WINXSHELL% -code "winapi.show_message('title', 'message')"
pause
rem %WINXSHELL% -code "Taskbar:Pin('cmd.exe', nil, '/k echo lua_test', 'shell32.dll', 27)"
rem pause

rem code file
start /wait %WINXSHELL% -script "%f0%"
pause
goto :EOF
]=]


--- -- ====================  lua script  ====================
-- comment, started with --

local dp0 = os.getenv('dp0')
winapi.show_message('CD', dp0)
winapi.show_message('#{shell32.dll,21769}', app:call('resstr', '#{@shell32.dll,21769}'))

winapi.show_message('app', app:info('winver'))

winapi.show_message('Screen', string.format('%dx%d, DPI:%d, brightness:%d',
    Screen:GetX(), Screen:GetY(), Screen:GetDPI(), Screen:Get('brightness')))

-- Screen:Set('brightness', 60)

winapi.show_message('Desktop', Desktop:GetWallpaper())
Desktop:ShowIcons(0)
app:sleep(2000)
Desktop:ShowIcons(1)
app:sleep(2000)
Desktop:SetIconSize('Large') -- 'L'
app:sleep(2000)
Desktop:SetIconSize('M')
-- app:sleep(2000)
-- Desktop:SetIconSize('S')

exec('/min', 'notepad.exe')

-- More Information

--[==[
WinXShell 公开参数一览:

wxs-open:system | 打开我的电脑属性
wxs-open:printers | 打开打印机设置窗口
wxs-open:networkconnections | 打开网络连接设置窗口
wxs-open:devicesandprinters | 打开设备和打印机设置窗口
wxs-open:wifi | 打开无线网络连接界面
wxs-open:volume | 打开音量控制界面

ms-settings:taskbar | 打开任务栏设置界面
ms-settings:dateandtime | 打开时间和日期设置界面ms-settings:display | 打开显示设置界面
ms-settings:personalization | 打开个性化设置界面
ms-settings:network | 打开网络连接设置界面(高版本Windows有效)
-console | 调试窗口
-ui -jcfg XXXXX\YYYY\ZZZ.jcfg | 启动UI组件
-winpe      | Windows PE 环境标识
-code luacode | 执行单行lua代码
-file luafile | 执行lua脚本文件

WinXShell 公开对象一览(-code, -script 时使用):

app 程序对象。
app:info(opt)  | 获取程序信息
app:call(...)  | 调用WinXShell内置函数
app:jcfg(opt)  | 获取jcfg配置文件设定信息
app:print(str) | 打印信息到调试窗口

对象方法参数说明:
app:info(opt)  | 获取程序信息
opt可以指定以下值。
'cmdline'    | 命令行参数(字符串)
'winver'      | Windows版本号(字符串)
'langid       | 系统语言编号(字符串)
'locale'       | 系统语言名称(字符串)
'path'         | 程序模块路径(字符串)
'FirmwareType'    | 启动模式[BIOS或UEFI](字符串)
'IsUEFIMode'       | 是否是UEFI启动模式(布尔值)

对象方法参数说明:
app:call(...)  | 调用WinXShell内置函数
... 可指定函数及参数如下。
'getresolutionlist' | 获取可用分辨率列表(字符串)
'cd', path                 | 切换当前工作目录到指定位置
'desktop::updatewallpaper'       | 刷新系统壁纸
'desktop::getwallpaper'          | 获取系统壁纸文件路径
'desktop::setwallpaper', file    | 更改系统壁纸
'volume::mute', 0or1             | 禁音/解除禁音
'volume::ismuted'                | 获取禁音状态
'volume::getlevel'               | 获取当前音量大小
'volume::setlevel', 0to100       | 更改当前音量大小
'volume::getname'                | 获取当前音频设备名称
'gettickcount'                   | 获取系统启动时间(秒单位)
'sleep', imsec                   | 等待imsec毫秒
'play', wavfile                  | 播放WAV格式音频文件
'putenv', var, val               | 设置环境变量
'envstr', str                    | 展开字符串中的环境变量(字符串)
'resstr', resstr                 | 展开字符串中的系统字符串资源
'run', file                      | 启动程序或者文件
'exitcode', code                 | 指定程序的退出码
'exit', code                     | 直接退出程序

--------------------------------------------------------
System 系统对象。
System:GetSettings(key) | 获取系统设定
System:SetSettings(key, val) | 更改系统设定
System:SysColorTheme(mode) | 更改系统颜色主题(mode = 'light' | 'dark')
System:AppsColorTheme(mode) | 更改应用颜色主题(mode = 'light' | 'dark')
System:Reboot() | 重启计算机
System:Shutdown() | 关闭计算机


对象方法参数说明:
System:GetSettings(key) | 获取系统设定
key可以指定以下值。
'AppsColorTheme' | 应用程序颜色主题
'SysColorTheme'  | 系统颜色主题
'ShellColorPrevalence'  | 外壳外观颜色
'WindowColorPrevalence' | 系统外观颜色
'Colors.Transparency'   | 使用透明色

System:SetSettings(key, val) | 更改系统设定
key可以指定以下值。
'ShellColorPrevalence'  | 外壳外观颜色
'WindowColorPrevalence' | 系统外观颜色
'Colors.Transparency'   | 使用透明色

--------------------------------------------------------
Screen 屏幕对象。
Screen:Get(...) | 获取屏幕信息
Screen:Set(...) | 设置屏幕参数
Screen:GetX() | 获取屏幕分辨率宽度
Screen:GetY() | 获取屏幕分辨率高度
Screen:GetRotation() | 获取屏幕旋转状态
Screen:GetDPI() | 获取屏幕DPI
Screen:Disp([w, h]) | 设置屏幕分辨率。不指定宽度和高度时，自动使用最大分辨率。
Screen:DispTest(arr) | 按照指定的分辨率列表逐个尝试设置屏幕分辨率，直到设置成功为止。

对象方法参数说明:
Screen:Get(...) | 获取屏幕信息
Screen:Set(...) | 设置屏幕参数
参数可以指定以下值。
'dpi' | 屏幕DPI
'brightness' | 屏幕亮度

--------------------------------------------------------
Desktop 桌面对象。
Desktop:Refresh()                                | 刷新桌面
Desktop:GetWallpaper()                       | 获取壁纸路径
Desktop:SetWallpaper(wallpaper)         | 设置壁纸路径
Desktop:SetIconSize(size)                     | 设置桌面图标大小('S', 'M', 'L')
Desktop:AutoArrange(checked)            | 设置 自动排列图标 选项 (0 | 1)
Desktop:SnapToGrid(checked)              | 设置 将图标与网格对齐 选项 (0 | 1)
Desktop:ShowIcons(checked)               | 设置 显示桌面图标 选项 (0 | 1)

--------------------------------------------------------
Taskbar 任务栏对象。
Taskbar:IsReady(sec) | 指定sec秒内判断任务栏是否准备就绪(sec为-1时，直到任务栏准备好为止)
Taskbar:WaitForReady() | 等待任务栏加载完毕(内部调用Taskbar:IsReady(-1)方法)
Taskbar:GetSetting(key) | 获取任务栏设定
Taskbar:SetSetting(key, value, type) | 更改任务栏设定
Taskbar:CombineButtons(value[, update]) | 更改任务栏合并按钮选项(value ='always' | 'auto'), update为0时，不立即生效
Taskbar:UseSmallIcons(value[,update]) | 更改任务栏使用小图标选项(value ='always' | 'auto'), update为0时，不立即生效
Taskbar:AutoHide(value) | 更改任务栏自动隐藏选项(value = 0 | 1)。
Taskbar:Pin(target[, name[, param[, icon[, index[, showcmd]]]]]) | 固定命令到任务栏

--------------------------------------------------------
Startmenu 开始菜单对象。
Startmenu:Pin(target[, name[, param[, icon[, index[, showcmd]]]]]) | 固定命令到开始菜单

--------------------------------------------------------
FolderOptions 文件夹选项对象。
FolderOptions:Get(opt) | 获取文件夹选项。
FolderOptions:Set(opt, val) | 更改文件夹选项。
FolderOptions:Toggle(opt) | 切换文件夹选项。

对象方法参数说明:
opt可以指定以下值。
'ShowAll'          | 显示隐藏文件
'ShowExt'          | 显示隐藏已知文件类型的扩展名
'ShowSuperHidden'  | 显示系统隐藏文件

WinXShell 可使用的库:

Lua5.4内置库: os, math, io等
https://www.lua.org/manual/5.4/

winapi 扩展库
https://github.com/stevedonovan/winapi

WinXShell 公开函数一览(-code, -script 时使用):

MinimizeWindow(class, title) | 隐藏指定窗口。
HideWindow(class, title) | 隐藏指定窗口。
CloseWindow(class, title) | 关闭指定窗口。
CloseShellWindow() | 关闭外壳窗口(外壳窗口不存在时，将等待外壳窗口出现后再关闭)。
os_ver_info() | 获取 ProductName, CSDVersion 信息(注册表)。
cpu_info() | 获取 CPU 信息(注册表)。
mem_info() | 获取系统可用内存(硬件以外)，总内存大小，当前可用内存。
res_str(file, id) | 获取指定字符串资源。
win_copyright() | 获取 Windows 许可证说明。
call_dll(...) | 调用 dll 中的公开函数。
reg_read(key, values) | 读取注册表信息。
reg_write(key, name, value[, type]) | 写入注册表信息。未指定type时, 当作 REG_SZ 类型。
exec(option, cmd) | 执行命令。 option 可指定 /wait - 等待执行命令结束, /hide - 隐藏，/min - 最小化。
link(lnk, target, param, icon, index, showcmd) | 创建快捷方式。
wxsUI(ui[, jcfg[, opt[, app_path]]]) | 打开指定的UI组件。
PinToStartMenu(target[, name[, param[, icon[, index[, showcmd]]]]]) | 别名。固定命令到开始菜单。

]==]
