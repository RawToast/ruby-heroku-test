from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait # available since 2.4.0
from selenium.webdriver.support import expected_conditions as EC # available since 2.26.

from unittest import TestCase

class DummyTest(TestCase):

    driver = None

    def setUp(self):
        # Create a new instance of the Firefox driver
        print ("Setting up")
        self.driver = webdriver.PhantomJS()

    def tearDown(self):
        print ("Tearing down")
        self.driver.quit()

    def testSomething(self):
        self.driver.get("http://www.google.com")
        print (self.driver.title)
        self.assertTrue(True)

#    def testFailure(self):
#        self.driver.get("http://www.google.com")
#        print("Fail everything now")
#        self.assertTrue(False)
