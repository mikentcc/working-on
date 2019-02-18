@echo off
REM Find users logged into computer
:START
SET /P computer="Server to Query Logged in Users - Type PC name \\pcname ? " 

query user /server:%computer%

CHOICE /M "Choose Y to Continue Server Query or N to quit"
	goto sub_%ERRORLEVEL%
	:sub_1
	Echo Find another user logged in now.
	goto:start
	:sub_2
	Echo GoodBye!
	goto:eof


