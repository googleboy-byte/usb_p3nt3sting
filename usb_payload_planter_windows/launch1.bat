TIMEOUT /T 3
wscript.exe \invisible.vbs notify_scanning.bat
wscript.exe \invisible.vbs file.bat
TIMEOUT /T 3
wscript.exe \invisible.vbs notify_scanning_completed.bat
