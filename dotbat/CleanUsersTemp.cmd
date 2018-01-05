@echo off

REM Clean out user profiles temp dir.
REM This will delete all files and folders from all profiles.
cd /D c:\Users
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\Local\Temp\*.*"
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\Local\Temp\*.*") DO RMDIR /S /Q "%%b"
exit
