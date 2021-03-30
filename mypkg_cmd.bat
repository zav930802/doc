@echo OFF

if "%MYPKG_CMD%" NEQ "" (exit /B 0)

set "MYPKG_CMD=1"

set "CURFILE_DIR=%~dp0"
set "CURFILE_DIR=%CURFILE_DIR:~0,-1%"

set "PATH=%CURFILE_DIR%;%PATH%"

set "PATH=C:\mypkg\curl\bin;%PATH%"

rem 打开命令控制台并调用编译环境脚本
"%comspec%" /k "(call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86 8.1 -vcvars_ver=14.1) || (pause & exit /B 1)"