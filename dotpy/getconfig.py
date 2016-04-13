import paramiko
import os
import datetime
###get user inputed host name or IP and get date 
host = raw_input("IP address to run against?")
dn = datetime.datetime.now()
d = dn.date()
t = dn.time()
#### Open text file for storing output
file = "%s--%s--%s.txt"%(host,d,t)
output = open(file,"w")
#User input so not to store user and password in script
username = raw_input("Connect as user?")
password = raw_input("Password for user?")
print host
print username
print "password not echoed back!"
#Setup Paramiko SSH session
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host,username=username,password=password)
stdin, stdout, stderr = ssh.exec_command("show run")
type(stdin)
#Grabbing output from command and writing to file
print "Running Command on host ... %s " % host
print "Writing config to local file"
data = stdout.readlines()
for line in data:
    print >> output, line.strip('\n')
print "Config ready in file %s" %output
print "Command Completed"
#Closing the SSH session
ssh.close
print "SSH Exit on host %s"%host

