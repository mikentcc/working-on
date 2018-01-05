import boto3
import os
import time

# Create an S3 client
s3 = boto3.client('s3')

filepath = 'D:\Backups\Backup Job Domain Controller\Backup Job Domain ControllerD2017-12-31T001619.vbk'
filename = os.path.basename(filepath)
bucket_name = '2018-jan-bkup'
key = 'domain-con/' + filename
#start timer 
start = time.time()
# Uploads the given file using a managed uploader, which will split up large
# files automatically and upload parts in parallel.
print ("Uploading the files now . . .")
s3.upload_file(filepath, bucket_name, key)
print ("Your file %s has been uploaded to %s" % (filename, bucket_name))
print ("Files have been Uploaded.")
end = time.time()
tottime = end-start
caltime = tottime*1000.0
print ("Process finished in %s seconds" % (caltime))
