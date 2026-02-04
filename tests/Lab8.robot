*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Open KKU Computing Website
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless=new
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Create Webdriver    Chrome    options=${chrome options}
    Go To    ${URL}
    Title Should Contain    KKU
    Close Browser
