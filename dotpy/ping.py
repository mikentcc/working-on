import os

print "This is a simple PING app!"
value =raw_input("What IP to PING? ")
os.system("ping -c3 -h 1024 -G 4096 " + value)
