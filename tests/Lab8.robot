*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Computing Website
    Open Browser    https://computing.kku.ac.th    chrome    options=add_argument(--headless);add_argument(--no-sandbox);add_argument(--disable-dev-shm-usage);add_argument(--disable-gpu);add_argument(--remote-debugging-port=9222);add_argument(--window-size=1920,1080)
    Title Should Contain    KKU
    Close Browser
