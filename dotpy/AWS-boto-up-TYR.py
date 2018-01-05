import boto3
import os
import time

# Create an S3 client
s3 = boto3.client('s3')

filepath = 'D:\Backups\Backup Job TYR File Server Every 6 Hours\Backup Job TYR File Server Every 6 HoursD2018-01-05T010229.vbk'
filename = os.path.basename(filepath)
bucket_name = '2018-jan-bkup'
key = 'tyr/' + filename
#start timer 
#now = time.ctime(int(time.time()))
start = time.ctime(int(time.time()))
#print (start)
# Uploads the given file using a managed uploader, which will split up large
# files automatically and upload parts in parallel.
print ("Uploading the files now . . .")
#s3.upload_file(filepath, bucket_name, key)
print ("Your file %s has been uploaded to %s" % (filename, bucket_name))
print ("Files have been Uploaded.")
end = time.ctime(int(time.time()))
#print (end)
#tottime = end-start
#caltime = tottime
print ("Process finished started at %s and finsished at %s" % (start, end))
