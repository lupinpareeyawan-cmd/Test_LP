*** Variables ***
${loginPage.url}        https://the-internet.herokuapp.com/login
${loginPage.browser}    chrome

*** Keywords ***
Open Login Page
    Open Browser    ${loginPage.url}    ${loginPage.browser}

Verify System Display Login Page
    Location Should Be    ${loginPage.url}

Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    ${loginPage.usernameTextInput}
    Input text                       ${loginPage.usernameTextInput}    ${username}

Input Password
    [Arguments]                      ${password}
    Wait Until Element Is Visible    ${loginPage.passwordTextInput}
    Input Text                       ${loginPage.passwordTextInput}    ${password}

Click Login Button
    Wait Until Element Is Visible    ${loginPage.loginButton}
    Click Button                     ${loginPage.loginButton}

Click Logout Button
    Wait Until Element Is Visible    ${secureAreaPage.logoutButton}
    Click Element                    ${secureAreaPage.logoutButton}

Verify Login Success
    Wait Until Element Is Visible    ${secureAreaPage.loginSuccessMessage}    
    Element Should Contain           ${secureAreaPage.loginSuccessMessage}    You logged into a secure area!

Verify Login Fail Password Incorrect
    Wait Until Element Is Visible    ${loginPage.loginFailMessage}    
    Element Should Contain           ${loginPage.loginFailMessage}    Your username is invalid!

Verify Login Fail Username Not Found
    Wait Until Element Is Visible    ${loginPage.loginFailMessage}    
    Element Should Contain           ${loginPage.loginFailMessage}    Your username is invalid!

Verify Logout Success
    Wait Until Element Is Visible    ${loginPage.logoutSuccessMessage}
    Element Should Contain           ${loginPage.logoutSuccessMessage}    You logged out of the secure area!
    

