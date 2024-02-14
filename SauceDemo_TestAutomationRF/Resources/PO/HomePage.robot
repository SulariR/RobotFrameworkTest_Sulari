*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCT} =    id=add-to-cart-sauce-labs-fleece-jacket
${SHOPPINGCART_LINK} =  class=shopping_cart_link

*** Keywords ***
Select product
    capture page screenshot    HomePage.png
    scroll element into view    ${PRODUCT}
    click element    ${PRODUCT}
    capture page screenshot    Product_added_to_cart.png
#        Run keyword if    ${PRODUCT_COUNT}  >= 0    Test keyword  1
#    ...     ELSE    Test keyword 2

Click on shopping cart
    scroll element into view    ${SHOPPINGCART_LINK}
    click link    ${SHOPPINGCART_LINK}




