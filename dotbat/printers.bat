@echo off 
h:
mkdir %PCNAME%

SET log=h:\%PCNAME%\PrinterList.txt
FOR /F "usebackq" %%i IN (`hostname`) DO SET PCNAME=%%i

REM FOR /F "usebackq" %%i IN (`%username%`) DO SET USER=%%i
SET USER=%username%

echo "                                                     " >> %log%
echo "                                                     " >> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo "Network Printer List for %USER% on Computer %PCNAME%" >> %log%
echo ----------------------------------------------------- >> %log%

reg query HKCU\Printers\Connections >> %log%
echo ----------------------------------------------------->> %log%
net use >> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo Printer list successfully saved to %log%
pause
