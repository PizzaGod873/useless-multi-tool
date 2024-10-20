@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

chcp 65001 >nul
mode 200, 50
set color=5
:color
color %color%

:start
cls
call :banner

echo 1) Tutorials
echo 2) Message box
echo 3) Change text color
echo q) Quit
echo.

choice /c 123q >nul

if /I %errorlevel% equ 1 (goto :tutorials)
if /I %errorlevel% equ 2 (goto :runvbs)
if /I %errorlevel% equ 3 (goto :colorchange)
goto :eof

:banner
echo.
echo.
echo ██╗   ██╗███████╗███████╗██╗     ███████╗███████╗███████╗    ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo ██║   ██║██╔════╝██╔════╝██║     ██╔════╝██╔════╝██╔════╝    ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██║   ██║███████╗█████╗  ██║     █████╗  ███████╗███████╗    ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo ██║   ██║╚════██║██╔══╝  ██║     ██╔══╝  ╚════██║╚════██║    ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo ╚██████╔╝███████║███████╗███████╗███████╗███████║███████║    ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo  ╚═════╝ ╚══════╝╚══════╝╚══════╝╚══════╝╚══════╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.
goto :eof

:tutorials
cls
call :banner

echo 1) Multi-tool
echo 2) Batch encrypter
echo b) Back
echo q) Quit
echo.

:tutorialsS2

choice /c 12bq >nul

if /I %errorlevel% equ 1 (start https://www.youtube.com/watch?v=x9aGS-FzONg & goto :tutorialsS2)
if /I %errorlevel% equ 2 (start https://www.youtube.com/watch?v=L0k9aXm-DSw & goto :tutorialsS2)
if /I %errorlevel% equ 3 (goto :start)

goto :eof

:runvbs
cls
call :banner

set /p vbscontents= Enter popup text: 
choice /c yn /m "Would you like to make it unclosable "

if /I %errorlevel% equ 1 (echo Do: msgbox "%vbscontents%": Loop > message.vbs)
if /I %errorlevel% equ 2 (echo msgbox "%vbscontents%" > message.vbs)

cscript /nologo message.vbs & del message.vbs

goto :start

:colorchange
cls
call :banner

echo 1) Blue     5) Purple     b) Back
echo 2) Green    6) Yellow     q) Quit
echo 3) Aqua     7) White
echo 4) Red      8) Gray
echo.

choice /c 12345678bq >nul
if /I %errorlevel% equ 1 (set color=1 & goto :color)
if /I %errorlevel% equ 2 (set color=2 & goto :color)
if /I %errorlevel% equ 3 (set color=3 & goto :color)
if /I %errorlevel% equ 4 (set color=4 & goto :color)
if /I %errorlevel% equ 5 (set color=5 & goto :color)
if /I %errorlevel% equ 6 (set color=6 & goto :color)
if /I %errorlevel% equ 7 (set color=7 & goto :color)
if /I %errorlevel% equ 8 (set color=8 & goto :color)
if /I %errorlevel% equ 9 (goto :start)

goto :eof