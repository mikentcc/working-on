cd "C:\Program Files (x86)\WinSCP"
winscp.com /command "open sftp://cob2:TestUser*@172.16.17.9/" "put c:\fso\2017* /var/www/html/reports/" "exit"
exit
