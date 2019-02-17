myip = raw_input("Enter you IP: ")
iplist =[]
iplist= myip.split(".")
binarylist = []
for ip in iplist:
 	binarylist.append(bin(int(ip)))
print binarylist
bin_oct =[]
for octect in binarylist:
	bin_octect = octect[2:]
	while True:
		if len(bin_octect) >= 8:
			break
		bin_octect = '0' + bin_octect
	bin_oct.append(bin_octect)	
bin_oct = ".".join(bin_oct)
print bin_oct
	
print "\n%-15s %-45s" % ("IP address", "Binary")
print "%-15s %-45s\n\n" % (myip, bin_oct)