*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/000-Common/CommonKeyWords.robot
Resource    ./CartLocators.robot
Resource    ./CartAssertions.robot

*** Keywords ***
Verify That Cart Is Successfully Opened
    wait until page contains    ${CART_SHOPPING_CART_TEXT}

Verify Product Name and Price Is Successfully Appear
    Verify That Product Name Is Successfully Appear
    Verify That Product Price Is Successfully Appear


Verify That Product Name Is Successfully Appear
     [Arguments]    ${product_name}
    wait until page contains         ${product_name}

Verify That Product Price Is Successfully Appear
    [Arguments]    ${product_price}
    wait until page contains         ${product_price}

Select Product Qantity
     select from list by label    ${CART_QUANTITY_DROP_DOWN_LIST}      ${CART_QUANTITY_DROP_DOWN_LIST_QUANTITY_NUMBER}

Click on Proceed To Buy
    Run Keyword until Success    seleniumlibrary.click element               ${CART_PROCEED_TO_BUY_BUTTON}



