*** Settings ***
Library     SeleniumLibrary
Resource    ./CheckOutLocators.robot
Resource    ./CheckOutAssertions.robot
Resource    ../../../Resources/000-Common/CommonKeyWords.robot

*** Keywords ***
Verify that checkout page opened successfully
    wait until page contains                                            ${CHECKOUT_PAGE_TEXT_HEADER}
    wait until page contains                                            ${CHECKOUT_PAGE_SHIPPING_ADDRESS_TEXT}

Select Cash on Delivery Method
    Run Keyword until Success    seleniumlibrary.click element          ${CHECKOUT_PAGE_COD_METHOD}

Click on Use This Payment Method
   wait until element is enabled                                        ${CHECKOUT_PAGE_USE_THIS_PAYMENT_METHOD}
   Run Keyword until Success     seleniumlibrary.click element          ${CHECKOUT_PAGE_USE_THIS_PAYMENT_METHOD}

Verify That Place Order Button is Successfully Appeared
    wait until element is visible                                        ${CHECKOUT_PAGE_PLACE_ORDER_BUTTON}