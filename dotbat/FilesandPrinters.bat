@echo off 

FOR /F "usebackq" %%i IN (`hostname`) DO SET PCNAME=%%i

REM FOR /F "usebackq" %%i IN (`whoami`) DO SET USER=%%i
SET USER=%username%

net use z: /delete /YES
net use z: \\helbuar\BackupUserData
z:
SET log=Z:\%PCNAME%\UserFilesPrinterList.txt
echo "                                                     " >> %log%
echo "                                                     " >> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo "Network Printer List for %USER% on Computer %PCNAME%" >> %log%
echo ----------------------------------------------------- >> %log%

reg query HKCU\Printers\Connections >> %log%
echo ----------------------------------------------------->> %log%
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >> %log%
echo Printer list successfully saved to %log%



mkdir %PCNAME%
mkdir %PCNAME%\Desktop
mkdir %PCNAME%\Favorites
mkdir %PCNAME%\Notes\Data
echo Beginning Copy Process - Please Wait Util Completed
echo "                                                      " >> %log%
echo "=================Begin Copy Process for " %USER% "=================" >> %log%
echo %date%%time% >> %log%

xcopy /I /E /Z C:\Users\%USER%\Desktop z:\%PCNAME%\Desktop >> %log%
xcopy /I /E /Z C:\Users\%USER%\Favorites z:\%PCNAME%\Favorites >> %log%
xcopy /I /E /Z "C:\Program Files (x86)\IBM\Lotus\Notes\Data" z:\%PCNAME%\Notes\Data >> %log%
xcopy /I /E /Z "C:\Program Files\IBM\Lotus\Notes\Data" z:\%PCNAME%\Notes\Data >> %log%


echo "========================Completed Copy Process============================" >> %log%
Echo "                                                                        " >> %log%

Echo Copy Process Completed
pause
net use z: /delete /YES
exit

