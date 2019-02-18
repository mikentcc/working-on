@echo off 

FOR /F "usebackq" %%i IN (`hostname`) DO SET PCNAME=%%i
SET USER=%username%
net use z: /delete /YES
net use z: \\helbuar\BackupUserData

z:

SET log=Z:\%PCNAME%\CopyBack-UserFilesPrinterList.txt
echo Beginning Copy Back Process - Please Wait Until Completed
echo "                                                      " >> %log%
echo "=================Begin Copy Back Process for " %USER% "=================" >> %log%
echo %date%%time% >> %log%

xcopy /D /I /E /Z z:\%PCNAME%\Desktop C:\Users\%USER%\Desktop >> %log%
xcopy /D /I /E /Z z:\%PCNAME%\Documents C:\Users\%USER%\Documents >> %log%
xcopy /D /I /E /Z z:\%PCNAME%\Favorites C:\Users\%USER%\Favorites >> %log%
xcopy /D /I /E /Z z:\%PCNAME%\Notes\Data\names.nsf "C:\Program Files (x86)\IBM\Lotus\Notes\Data" >> %log%
xcopy /D /I /E /Z z:\%PCNAME%\Notes\Data\*.id "C:\Program Files (x86)\IBM\Lotus\Notes\Data" >> %log%


echo "========================Completed Copy Back Process============================" >> %log%
Echo "                                                                        " >> %log%

Echo Copy Back Process Completed!
pause
net use z: /delete /YES
exit

