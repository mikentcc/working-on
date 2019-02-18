@echo off
echo This script will install updates and restart a Server.
:start
c:
cd \
cd scripts
SET /P server=Server name to Install updates and Restart: 
ShutdownWithUpdates.exe /r /m \\%server% 
CHOICE /M "Choose Y to Continue Server Mantenance or N to quit"
	goto sub_%ERRORLEVEL%
	:sub_1
	Echo You want to Restart another Server
	goto:start
	:sub_2
	Echo Done installing Updates
	goto:eof

h:
cd scripts
