*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Computing Website
    Open Browser    https://computing.kku.ac.th    chrome
    Title Should Contain    KKU
    Close Browser
