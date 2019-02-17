import zipfile
import os
import datetime
import sys
fa = sys.argv[0]
#zip1 = raw_input('what file to unzip? ')
#def unzipme(fa):
with zipfile.ZipFile('22806.zip',"r") as zip_ref:
	#for name in zip_ref.namelist():
	ns = zip_ref.namelist()
	print ns
	nstr = (ns)[0]
	pw = nstr.rsplit('.',3)[0]
	zip_ref.extractall(pwd=pw)
	#zip_ref.printdir()
	fa = nstr
	print nstr
	print pw
	for a in range(0, 550):
		with zipfile.ZipFile(nstr,"r") as zip_ref:
		
			ab = zip_ref.namelist()
			nstr = (ab)[0]
			pw = nstr.rsplit('.',3)[0]
			zip_ref.extractall(pwd=pw)
			print nstr
	#else: print "Not going to happen"

