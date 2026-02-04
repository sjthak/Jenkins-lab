*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Open KKU Computing Website
    ${args}=    Create List    --headless    --no-sandbox    --disable-dev-shm-usage    --disable-gpu    --window-size=1920,1080
    ${chrome_options}=    Create Dictionary    args=${args}
    ${caps}=    Create Dictionary    goog:chromeOptions=${chrome_options}

    Open Browser    https://computing.kku.ac.th    chrome    desired_capabilities=${caps}
    Title Should Contain    KKU
    Close Browser
