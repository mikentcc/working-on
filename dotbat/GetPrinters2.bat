@echo off 
ping 127.0.0.1 -n 6 > nul
FOR /F "usebackq" %%i IN (`hostname`) DO SET PCNAME=%%i

REM FOR /F "usebackq" %%i IN (`whoami`) DO SET USER=%%i
SET USER=%username%

REM net use z: /delete /YES
REM net use z: \\helbuar\BackupUserData
S:
if not exist "S:\PRINTERINFO\%PCNAME%" mkdir PRINTERINFO\%PCNAME%
SET log=S:\PRINTERINFO\%PCNAME%\UserPrinterList.txt
echo "                                                     " > %log%
echo "                                                     " >> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo "Network Printer List for %USER% on Computer %PCNAME%" >> %log%
echo ----------------------------------------------------- >> %log%

reg query HKCU\Printers\Connections >> %log%
echo ----------------------------------------------------->> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo Printer list successfully saved to %log%

REM net use z: /delete /YES
exit

