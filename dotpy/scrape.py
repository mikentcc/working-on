from BeautifulSoup import BeautifulSoup
import urllib2
url="http://www.jsonline.com/weather/"
page=urllib2.urlopen(url)
soup = BeautifulSoup(page.read())
tlist = []
tlist.append(soup)

scraped=soup.findAll('div',{'class':'icast_Container'})
#scraped=soup.findAll(class_ ='icast_Container')
for a in scraped:
    text = a.text
    for b in a.findNextSiblings():
        text += '\n' + b.text
    tlist.append(text)
print tlist
