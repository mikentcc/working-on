@Echo Off
REM Copy User Data from local PC to Temp Storage

SET /P username=[User to copy data from?]
SET /P computer=[Compupter to copy data from - Type PC name \\pcname ?]
SET log=F:\bkup\copyUser.txt

REM net use z: \\tyr\Infoserv\MJD\UserData

F:
cd bkup

mkdir %username%
mkdir %username%\Desktop
mkdir %username%\Favorites
mkdir %username%\Microsoft
mkdir %username%\Public_Desktop
mkdir %username%\Contacts
mkdir %username%\Notes\Data\
mkdir %username%\Mozilla\Firefox\Profiles
echo "                                                      " >> %log%
echo "=================Begin Copy Process for " %username% "=================" >> %log%
echo %date%%time% >> %log%

xcopy /I /E /Z %computer%\C$\Users\%username%\Desktop F:\bkup\%username%\Desktop >> %log%
xcopy /I /E /Z %computer%\C$\Users\%username%\Favorites F:\bkup\%username%\Favorites >> %log%
xcopy /I /E /Z %computer%\C$\Users\%username%\AppData\Roaming\Microsoft F:\bkup\%username%\Microsoft >> %log%
xcopy /I /E /Z %computer%\C$\Users\Public\Desktop F:\bkup\%username%\Public_Desktop >> %log%
xcopy /I /E /Z %computer%\C$\Users\%username%\Contacts F:\bkup\%username%\Contacts >> %log%
xcopy /I /E /Z %computer%\"C$\Users\%username%\AppData\Roaming\Microsoft\Sticky Notes" F:\bkup\%username%\Microsoft >> %log%
xcopy /I /E /Z %computer%\"C$\Program Files (x86)\IBM\Lotus\Notes\Data\names.nsf" F:\bkup\%username%\Notes\Data >> %log%
xcopy /I /E /Z /C /H %computer%\"C$\Users\%username%\AppData\Roaming\Mozilla\Firefox\Profiles" F:\bkup\%username%\Mozilla\Firefox\Profiles >> %log%

echo "========================Completed Copy Process============================" >> %log%
Echo "                                                                        " >> %log%

REM net use z: /delete


