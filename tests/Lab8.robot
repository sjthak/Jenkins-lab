*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Open KKU Computing Website
    Open Browser    ${URL}    chrome    options=add_argument(--headless);add_argument(--no-sandbox);add_argument(--disable-dev-shm-usage)
    Title Should Contain    KKU
    Close Browser
