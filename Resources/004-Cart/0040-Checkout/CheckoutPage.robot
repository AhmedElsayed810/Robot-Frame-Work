*** Settings ***
Library     SeleniumLibrary
Resource    ./CheckOutKeywords.robot
Resource    ../../../Resources/004-Cart/CartKeywords.robot

*** Keywords ***
Verifcation of Visability of Place Order Button
    CheckOutKeywords.Verify that checkout page opened successfully
    CartKeywords.Verify Product Name and Price Is Successfully Appear
    CheckOutKeywords.Select Cash on Delivery Method
    CheckOutKeywords.Click on Use This Payment Method
    CheckOutKeywords.Verify That Place Order Button is Successfully Appeared