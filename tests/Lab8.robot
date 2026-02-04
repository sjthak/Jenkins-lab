*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Computing Website
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080

    Create Webdriver    Chrome    options=${options}
    Go To    https://computing.kku.ac.th
    Title Should Contain    KKU
    Close Browser
