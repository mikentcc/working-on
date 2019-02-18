@echo off

rem *********************************************************************************************
rem * Use variable BV to define location of backup storage volume.                               	 *
rem * Do not include trailing '\' character. Do not enclose paths with spaces in quotes. 	 *
rem * BD is the directory that you want to back up. 						                         *
rem *********************************************************************************************

set BD="C:\LFDATA\SQLBACKUP"

set BV="\\HELBUAR\LaserficheBackups"

rem *********************************************************************************************
rem * Setting the date	     SET date="%date:~10,4%-%date:~4,2%-%date:~7,2%"	       	 *
rem *********************************************************************************************

rem *********************************************************************************************
rem * Make directory with date value				                           	                                  *
rem * Run ROBOCOPY command								 	                                  *
rem *********************************************************************************************

MKDIR "%BV%\%date:~10,4%-%date:~4,2%-%date:~7,2%"

ROBOCOPY %BD% "%BV%\%date:~10,4%-%date:~4,2%-%date:~7,2%\LF91-BKUP" /COPY:DAT /E /Z /R:0 /W:0 /MT:128 /V /B /XF thumbs.db /LOG:"%BV%\%date:~10,4%-%date:~4,2%-%date:~7,2%\Server %date:~10,4%-%date:~4,2%-%date:~7,2%.txt"

:end
exit