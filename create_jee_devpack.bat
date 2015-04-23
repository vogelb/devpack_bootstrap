@echo off
rem ************************************************
rem Bootstrap script: Create JEE DevPack 
rem Create a new local devpack instance 
rem ************************************************

set DEVPACK_NAME=%1

if "%1" == "" (
	set DEVPACK_NAME=devpack
)

if not exist %DEVPACK_NAME% goto bootstrap
echo.
echo The folder %DEVPACK_NAME% already exists.
echo Please choose another name for your new devpack. 
echo.

goto done

:bootstrap
git clone http://github.com/vogelb/jee-devpack-win.git %DEVPACK_NAME%
cd %DEVPACK_NAME%
rmdir /S /Q .git >NUL

echo.
echo DevPack instance %DEVPACK_NAME% created.
echo Now configure and install the DevPack.
echo.

:done 
