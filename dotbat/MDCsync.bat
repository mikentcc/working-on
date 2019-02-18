@echo off

echo "================= Beginning File Sync ================="

xcopy /I /E /Z /C /H /Y \\tyr\police\MDCREF C:\Users\User\Desktop\MDCREF

echo "================= Completed File Sync ================="
timeout /t 5

exit

