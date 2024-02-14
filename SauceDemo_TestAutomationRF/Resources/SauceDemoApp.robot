*** Settings ***
Resource    ../Resources/PO/SignInPage.robot
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/ShoppingCartPage.robot
Resource    ../Resources/PO/CheckoutPage.robot

*** Keywords ***
Load website
    SignInPage.Load

Sign in to website
    SignInPage.SignIn with credentials

Select product and add to cart
    HomePage.Select product

View shopping cart
    HomePage.Click on shopping cart
    ShoppingCartPage.Validate cart page

Proceed with checkout
    CheckoutPage.Click on checkout
    CheckoutPage.Validate checkout page
    CheckoutPage.Add Customer information
    CheckoutPage.Complete order