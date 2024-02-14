*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHECKOUT_BUTTON_CARTPAGE} =       id=checkout
${CHECKOUT_PAGELABLE} =             Checkout: Your Information
${FIRST_NAME_TEXTFIELD} =           id=first-name
${LAST_NAME_TEXTFIELD} =            id=last-name
${POSTAL_CODE_TEXTFIELD} =          id=postal-code
${CONTINUE_BUTTON} =                id=continue
${FINISH_BUTTON} =                  id=finish
*** Keywords ***
Click on checkout
    click button    ${CHECKOUT_BUTTON_CARTPAGE}

Validate checkout page
    page should contain         ${CHECKOUT_PAGELABLE}       10
    capture page screenshot     Checkout_information_page.png

Add Customer information
    input text      ${FIRST_NAME_TEXTFIELD}       ${FIRSTNAME}
    input text      ${LAST_NAME_TEXTFIELD}        ${LASTNAME}
    input text      ${POSTAL_CODE_TEXTFIELD}      ${POSTAL_CODE}
    click button    ${CONTINUE_BUTTON}

Complete order
    page should contain         Checkout: Overview      10
    capture page screenshot     Checkout_Overview.png
    click button                ${FINISH_BUTTON}
    page should contain         Checkout: Complete!     10
    page should contain         Thank you for your order!
    capture page screenshot     Order_complete.png