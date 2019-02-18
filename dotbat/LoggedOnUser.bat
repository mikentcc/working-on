 @Echo OFF
 
 SET /P computer=Enter Computer Name to get Logged on User  
 
 wmic.exe /node:%computer% computersystem get username
 
 REM echo User %a% is logged on to %computer%
 pause