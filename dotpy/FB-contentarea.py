import mechanize
from BeautifulSoup import BeautifulSoup
import urllib2
import cookielib

cj = cookielib.CookieJar()
br = mechanize.Browser()
br.set_cookiejar(cj)
br.open("https://www.facebook.com")

# Broser options
br.set_handle_equiv(True)
br.set_handle_gzip(True)
br.set_handle_redirect(True)
br.set_handle_referer(True)
br.set_handle_robots(False)
br.set_handle_equiv(False)
#
br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)

br.addheaders = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]

#br.addheaders = [('User-Agent', ua), ('Accept', '*/*')]

br.select_form(nr=0)
br.form['login_form[email]'] = 'username'
br.form['login_form[pass]'] = 'password'
br.submit()
br.response().read()

page = br.open("https://www.facebook.com/fbuserpage")
#page=urllib2.urlopen(url)
soup = BeautifulSoup(page.read())
SecAlerts = []
SecAlerts.append(soup)

CERTalerts=soup.findAll('div',{'class':'contentArea'})
for alerts in CERTalerts:
    text = alerts.text
    for alert in alerts.findNextSiblings():
        text += '\n' + alert.text
    SecAlerts.append(text)
#    s = str(SecAlerts)
print SecAlerts[1:20],
