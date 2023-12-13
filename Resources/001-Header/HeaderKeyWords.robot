*** Settings ***
Library     SeleniumLibrary
Resource    ./HeaderAssertions.robot
Resource    ./HeaderLocators.robot
Resource    ../../Resources/000-Common/CommonKeyWords.robot

*** Keywords ***
verify That Header is Successfully Appear
    wait until page contains    ${HEADER_AMAZON.EG_TEXT}

Click on Acount Icon
       Run Keyword until Success    seleniumlibrary.click element     ${HEADER_ACOUNT_ICON}