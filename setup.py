from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from SeleniumLibrary import SeleniumLibrary

class CustomSeleniumLibrary(SeleniumLibrary):
    def __init__(self, *args, **kwargs):
        driver_path = ChromeDriverManager().install()
        service = Service(driver_path)
        webdriver.Chrome(service=service)
        super().__init__(*args, **kwargs)
