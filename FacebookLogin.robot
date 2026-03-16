*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.facebook.com
${BROWSER}      Chrome
${USERNAME}     your_email_or_phone
${PASSWORD}     your_password

*** Keywords ***
Open Browser
    Open Browser    ${URL}    ${BROWSER}

Maximize Browser Window
    Maximize Browser Window


*** Test Cases ***
Login To Facebook
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=email    ${USERNAME}
    Input Text      id=pass     ${PASSWORD}
    Click Button    name=login
    [Teardown]      Close Browser