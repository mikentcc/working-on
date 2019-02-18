@echo off 

FOR /F "usebackq" %%i IN (`hostname`) DO SET PCNAME=%%i

REM FOR /F "usebackq" %%i IN (`whoami`) DO SET USER=%%i
SET USER=%username%

net use z: /delete /YES
net use z: \\helbuar\BackupUserData
z:
if not exist "Z:\%PCNAME%" mkdir %PCNAME%
SET log=Z:\%PCNAME%\UserPrinterList.txt
echo "                                                     " > %log%
echo "                                                     " >> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo "Network Printer List for %USER% on Computer %PCNAME%" >> %log%
echo ----------------------------------------------------- >> %log%

reg query HKCU\Printers\Connections >> %log%
echo ----------------------------------------------------->> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo Printer list successfully saved to %log%

net use z: /delete /YES
exit

