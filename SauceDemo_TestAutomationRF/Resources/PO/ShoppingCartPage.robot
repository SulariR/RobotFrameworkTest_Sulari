*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_LABEL} =     Your Cart

*** Keywords ***
Validate cart page
    page should contain    ${CART_LABEL}
    page should contain    Sauce Labs Fleece Jacket
    capture page screenshot     Shopping_cart.png
