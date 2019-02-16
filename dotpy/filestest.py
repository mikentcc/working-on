import os, sys, time
path = '/home/md/newdir'
files = os.listdir(path)
print files
print path
fullp = '/home/md/newdir/'
timenow = time.time()
timeplus = timenow + 604800 #7days
timeminus = timenow - 604800 #minus 7days
print timeplus
print timenow
print timeminus


for file in files:
    fullpath = fullp + file
    date =  os.path.getmtime(fullpath)
    other = os.path.getsize(fullpath)
    #print date, other
    if date < timeminus:
        print fullpath + " file will be deleted"
        os.rename(fullpath,'movedfile.txt')
    else:
     print fullpath + " file OK"
        
    
