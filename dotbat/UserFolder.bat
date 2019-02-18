@Echo Off
REM Set User home folder and permissions

SET /P username=[User to Create Folder for?]
REM SET /P computer=[Compupter to copy data from - Type PC name \\pcname ?]
SET log=c:\copyUser.txt

echo "                                                      " >> %log%
echo "=================Begin Folder Creations and Perms for " %username% "=================" >> %log%
echo %date%%time% >> %log%
mkdir \\tyr\E$\Share\home\%username%
icacls \\tyr\E$\Share\home\%username% /grant "Domain Admins":(OI)(CI)F /T /C /Q
icacls \\tyr\E$\Share\home\%username% /grant %username%:(OI)(CI)F /T /C /Q

REM net share %username%="Z:\%username%" /GRANT:%username%,FULL


echo "========================Completed Process============================" >> %log%
Echo "                                                                        " >> %log%

REM net use z: /delete


