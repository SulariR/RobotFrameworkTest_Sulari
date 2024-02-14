*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_TEXTFIELD} =           id=user-name
${PASSWORD_TEXTFIELD} =           id=password
${LOGIN_BUTTON} =                 id=login-button

*** Keywords ***
Load
    go to    ${URL}

SignIn with credentials
    wait until page contains element        ${USERNAME_TEXTFIELD}   20
    input text    ${USERNAME_TEXTFIELD}     ${USER_NAME}
    input text    ${PASSWORD_TEXTFIELD}     ${PASSWORD}
    capture page screenshot    SignInPage.png
    click button    ${LOGIN_BUTTON}