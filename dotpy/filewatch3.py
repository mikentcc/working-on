import os, time, smtplib

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText


path_to_watch = "/Users/miked/vm"
before = dict ([(f, None) for f in os.listdir (path_to_watch)])
while 1:
  time.sleep (10)
  after = dict ([(f, None) for f in os.listdir (path_to_watch)])
  added = [f for f in after if not f in before]
  removed = [f for f in before if not f in after]
  if removed: print "Removed: ", ", ".join (removed)
  if added: 
    print "Added: ", ", ".join (added)
    fromaddr = 'mike@ntcc.biz'
    toaddrs  = 'mike.deibert@gmail.com'
    msg = 'New Security Camera Photo! \n CHECK DRIVE \n' + str(added)
    sub = 'Sec Camera'
    # Credentials (if needed)
    username = 'mike.deibert@gmail.com'
    password = ''
    # The actual mail send
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.starttls()
    server.login(username,password)
    server.sendmail(fromaddr, toaddrs, msg)
    server.quit()

  before = after
