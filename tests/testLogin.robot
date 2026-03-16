***Settings***
Resource    ${CURDIR}/../config/import.robot

***Test Cases***
Test01 Login success
    Open Login Page
    # Exp1 1. Login page is shown.
    Verify System Display Login Page 
    Input Username                       ${loginSuccess.username}
    Input Password                       ${loginSuccess.password}
    Click Login Button
    # Exp2 2. Login success and the message 'You logged into a secure area!' is shown.
    Verify Login Success
    Click Logout Button
    # Exp3 3. Go back to the Login page and the message ' You logged out of the secure area!' is shown.
    Verify Logout Success


Test02 Login failed - Password incorrect
    Open Login Page
    # Exp1 1. Login page is shown.
    Verify System Display Login Page 
    Input Username                          ${loginFailIncorrectPassword.username}
    Input Password                          ${loginFailIncorrectPassword.password}
    Click Login Button
    # Exp2 2. Login failed and the message 'Your password is invalid!' is shown.
    Verify Login Fail Password Incorrect

Test03 Login failed - Username not found
    Open Login Page
    # Exp1 1. Login page is shown.
    Verify System Display Login Page 
    Input Username                          ${loginFailUsernameNotFound.username}
    Input Password                          ${loginFailUsernameNotFound.password}
    Click Login Button
    # Exp2 2. Login failed and the message 'Your username is invalid!' is shown.
    Verify Login Fail Username Not Found

Test04 Login passed - tel number
    Open Login Page
    # Exp1 1. Login page is shown.
    Verify System Display Login Page 
    Input Username                       ${loginSuccessTelNumber.username}
    Input Password                       ${loginSuccessTelNumber.password}
    Click Login Button
    # Exp2 2. Login success and the message 'You logged into a secure area!' is shown.
    Verify Login Success




