import paramiko
host = '192.168.100.31'
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username='admin',password='cisco123')
stdin, stdout, stderr = ssh.exec_command("show run")
type(stdin)
print "Running Command on host ...%s " % host
data = stdout.readlines()
for line in data:
    print "" + line.strip('\n')
print ""
print "Command Completed"
ssh.close
print "SSH Exit on host %s"%host

