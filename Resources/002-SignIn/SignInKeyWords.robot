*** Settings ***
Library     SeleniumLibrary
Resource    ./SignInLocators.robot
Resource    ./SignInAssertions.robot
Resource    ../../Resources/000-Common/CommonKeyWords.robot

*** Keywords ***
Verify That SignIn Page Is Suceessfully Loaded
    wait until page contains    ${SIGN_IN_PAGE_SIGN_IN_TEXT}
    wait until page contains    ${SIGN_IN_PAGE_EMAIL_OR_MOBILE_PHONE_NUMBER_TEXT}

Insert Email in Email Text Field
    [Arguments]    ${sign_in_page_email_text}
        Run Keyword until Success    seleniumlibrary.input text     ${SIGN_IN_PAGE_EMAIL_FIELD}      ${sign_in_page_email_text}

Insert Password in Password Text Field
    [Arguments]    ${sign_in_page_password_text}
    Click on Continue Button
    Verify That Password Field is Successfully Appeared
       seleniumlibrary.input text     ${SIGN_IN_PAGE_PASSWORD_FIELD}      ${sign_in_page_password_text}


Click on Continue Button
    Run Keyword until Success    seleniumlibrary.click element    ${SIGN_IN_PAGE_COUNTINUE_BUTTON}

Verify That Password Field is Successfully Appeared
    wait until page contains   ${SIGN_IN_PAGE_PASSWORD_TEXT}

Click on Sign In Submit Button
    Run Keyword until Success    seleniumlibrary.click element    ${SIGN_IN_PAGE_SIGN_IN_BUTTON}
    Verify That User is Successfully Loged In

Verify That User is Successfully Loged In
    wait until page does not contain    ${SIGN_IN_PAGE_HELLO_SIGN_IN_TEXT}