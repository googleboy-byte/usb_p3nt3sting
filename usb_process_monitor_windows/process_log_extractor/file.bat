@echo off
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off


REM %backupcmd% "%USERPROFILE%\Downloads\logged.txt" "%drive%\all"
%backupcmd% "C:\Downloads\process_monitor_log.txt" "%drive%\all"
@echo off
cls
