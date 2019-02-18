@ECHO Off
REM Clean up Munis temp file from User Profile
cd \
del /F /Q %userprofile%\AppData\Local\Temp\mutemp\*.*

exit
