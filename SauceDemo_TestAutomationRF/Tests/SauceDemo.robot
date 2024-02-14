*** Settings ***
Documentation   This is end to end test automation for SaceDemo.com
Resource        ../Resources/Common.robot
Resource        ../Resources/SauceDemoApp.robot

Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web test

# use the below line (without the # sign) to run the script
# robot -d results tests

*** Variables ***
${BROWSER} =        chrome
${URL} =            https://www.saucedemo.com/
${USER_NAME} =      standard_user
${PASSWORD} =       secret_sauce
${FIRSTNAME} =      Alex
${LASTNAME} =       Smith
${POSTAL_CODE} =    3325

*** Test Cases ***
User can sign in and order an item
    [Documentation]     User signs in, add product to cart, proceed to checkout and finish order
    [Tags]              teste2e
    SauceDemoApp.Load website
    SauceDemoApp.Sign in to website
    SauceDemoApp.Select product and add to cart
    SauceDemoApp.View shopping cart
    SauceDemoApp.Proceed with checkout
