*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Open KKU Computing Website
    Set Environment Variable    DISPLAY    :99
    Open Browser    ${URL}    chrome
    Title Should Contain    KKU
    Close Browser
