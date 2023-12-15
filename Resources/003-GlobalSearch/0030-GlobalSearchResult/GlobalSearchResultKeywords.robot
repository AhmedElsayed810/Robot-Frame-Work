*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/000-Common/CommonKeyWords.robot
Resource    ./GlobalSearchResuktLocators.robot
Resource    ./GlobalSearchResultAssertions.robot
Resource    ../../003-GlobalSearch/GlobalSearchKeywords.robot

*** Keywords ***
Verify That product is Successfully appeared
    [Arguments]    ${product_name}
    wait until page contains         ${product_name}

Click on Add To Cart Button
    scroll element into view                                      ${SEARCH_RESULT_SPECIFIC_PRODUCT_TO_ADD}
    Run Keyword until Success    seleniumlibrary.click element    ${SEARCH_RESULT_ADD_TO_CART_BUTTON}

Verify That Product is Successfully Added To The Cart
    wait until element is visible    ${SEARCH_RESULT_ITEM_ADDED_TO_CART_LABEL}

Click on Go To Basket Button
    Run Keyword until Success    seleniumlibrary.click element    ${SEARCH_RESULT_GO_TO_BASKET_BUTTON}

Clear search bar
     Press Keys  ${Global_SEARCH_SEARCH_BAR_FIELD}  CTRL+A+DELETE