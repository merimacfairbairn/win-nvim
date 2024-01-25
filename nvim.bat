@echo off
setlocal
set NVIM_HOME=%~dp0nvim-win64
set NVIM_INIT=%NVIM_HOME%\nvim\init.lua
set XDG_CONFIG_HOME=%NVIM_HOME%
set PATH=%PATH%;%~dp0PortableGit\bin\
%NVIM_HOME%\bin\nvim.exe -u %NVIM_INIT% %*
endlocal
