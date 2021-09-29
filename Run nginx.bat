@echo on
set this_bat_path=%~dp0
cd /d %this_bat_path%

set count=0
:loop
set /a count=%count%+1
@echo %count%
taskkill /F /IM nginx.exe
CALL start nginx
pause
if %count% neq 100 goto loop