REM I'm running at startup with elevated privileges
time /t > starting.txt
mkdir c:\applications
cacls c:\applications /t /e /c /g everyone:f
if exist c:\applications\started.txt goto skip

rem Run this section only once

rem ServerManagerCmd.exe -install SMTP-Server -restart

rem Switch off the firewall
rem netsh advfirewall set allprofiles state off

rem Disable IE Security
rem REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}" /v "IsInstalled" /t REG_DWORD /d 0 /f
rem REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}" /v "IsInstalled" /t REG_DWORD /d 0 /f

:skip
time /t > c:\applications\started.txt
exit /b 0