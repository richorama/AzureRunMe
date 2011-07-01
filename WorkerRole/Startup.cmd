REM I'm running at startup with elevated privileges
time /t > starting.txt
mkdir c:\applications
cacls c:\applications /t /e /c /g everyone:f
if exist started.txt goto skip
rem Run this section only once
rem ServerManagerCmd.exe -install SMTP-Server -restart
rem netsh advfirewall set allprofiles state off
:skip
time /t > started.txt
exit /b 0
