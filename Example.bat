@echo off
title WRD API for Batch
color 0a
:start
cls
echo WeAreDevsAPI for Batch
echo.
echo 1. Inject
echo 2. Execute
echo 3. WebExecute
choice /c 123 >nul
if %errorlevel% == 1 (goto inject)
if %errorlevel% == 2 (goto execute)
if %errorlevel% == 3 (goto web)
goto start

:inject
cls
call wrd.attach
goto start

:execute
cls
call wrd.execute
goto start

:web
cls
set /p input="Raw text web address here: "
call wrd.web %input%
goto start
