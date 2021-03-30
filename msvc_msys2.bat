@echo OFF

(call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86 8.1 -vcvars_ver=14.1) || (pause & exit /B 1)

(call "C:\msys64\msys2_shell.cmd" -mingw64 -use-full-path) || (pause & exit /B 1)
