import time
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains

driver = webdriver.Firefox()

driver.get("https://www.signupgenius.com/register")
driver.find_element_by_id("email").send_keys("username")
driver.find_element_by_id("pword").send_keys("password")
driver.find_element_by_id("loginBtnId").click()

driver.get("https://www.signupgenius.com/go/20f054fa8ae2aabfd0-testplayground")
#driver.find_element_by_xpath("/html/body/div[3]/div[1]/div[1]/form/div[4]/table/tbody/tr/td[3]/table/tbody/tr[2]/td/table/tbody/tr[1]/td[3]/div/span")
#driver.get("https://www.signupgenius.com/go/20f054fa8ae2aabfd0-test")
#driver.find_element_by_class_name("SUGbutton rounded").click()
#find all instances of the clickable button
test2 = []
test2 = driver.find_elements_by_xpath("//span[contains(@class,'SUGbutton rounded')]")
#driver.find_elements_by_xpath("/html/body/div[3]/div[1]/div[1]/form/div[4]/table/tbody/tr/td[3]/table/tbody/tr[2]/td/table/tbody/tr[1]/td[3]/div/span")
#driver.find_elements_by_xpath("//span[contains(@class,'SUGbutton rounded')]")
print test2
#actions = ActionChains(test2)

for test1 in test2[:6]:
	#print test1
	time.sleep(1)
	test1.click()
	#actions.move_to_element(test1).click().perform()
#Submit the days
time.sleep(5)
#driver.find_element_by_xpath("//span[contains(@class,'SUGbutton rounded')]").click()
driver.find_element_by_xpath("//input[contains(@class,'giantsubmitbutton rounded link_cursor')]").click()
time.sleep(10)
driver.find_element_by_xpath("/html/body/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[3]/div/span/span[2]/button").click()
#/html/body/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[3]/div/span/span[2]/button
#/html/body/div[3]/div[1]/div[1]/form/div[4]/table/tbody/tr/td[3]/table/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/div/span
#/html/body/div[3]/div[1]/div[1]/form/div[4]/table/tbody/tr/td[3]/table/tbody/tr[2]/td/table/tbody/tr[1]/td[3]/div/span
