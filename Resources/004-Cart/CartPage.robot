*** Settings ***
Resource    ./CartKeywords.robot

*** Keywords ***
Navigate To Checkout Page Through Cart Page
    [Arguments]    ${product_name}=Samsung Galaxy A54    ${product_price}=EGP 9,090.00
    CartKeywords.Verify That Cart Is Successfully Opened
    CartKeywords.Verify Product Name and Price Is Successfully Appear    ${product_name}    ${product_price}
    CartKeywords.Select Product Qantity
    CartKeywords.Click on Proceed To Buy

