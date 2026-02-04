*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Open KKU Computing Website
    ${chrome options}=    Create Dictionary    args=${EMPTY}
    ${args}=    Create List    --headless    --no-sandbox    --disable-dev-shm-usage    --disable-gpu    --window-size=1920,1080
    Set To Dictionary    ${chrome options}    args=${args}
    ${caps}=    Create Dictionary    goog:chromeOptions=${chrome options}

    Open Browser    ${URL}    chrome    desired_capabilities=${caps}
    Title Should Contain    KKU
    Close Browser
