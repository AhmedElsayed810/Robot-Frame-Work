*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/000-Common/CommonKeyWords.robot
Resource    ./GlobalSearchAssertions.robot
Resource    ./GlobalSearchLocators.robot

*** Keywords ***

Verify That Global Search Bar is Successfully Appear
    wait until page contains    ${GLOBAL_SEARCH_SEARCH_BAR_SEARCH_AMAZON.EG_TEXT}

Insert Product Name To Search For
    [Arguments]    ${product_name}
    Verify That Global Search Bar is Successfully Appear
    Run Keyword until Success    seleniumlibrary.input text      ${Global_SEARCH_SEARCH_BAR_FIELD}   ${product_name}

Click on Enter on Key Board To Navigate To Product
    press keys    Enter

Verify That product is Successfully appeared
    [Arguments]    ${product_name}
    wait until page contains         ${product_name}