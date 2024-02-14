*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

End Web test
    close browser


