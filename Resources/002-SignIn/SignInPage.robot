*** Settings ***
Library     SeleniumLibrary
Resource    ./SignInKeyWords.robot
*** Keywords ***
Sign In Via Email
    [Arguments]    ${sign_in_page_email_text}=abdelmonemahmed69@gmail.com       ${sign_in_page_password_text}=Test@1234
    Verify That SignIn Page Is Suceessfully Loaded
    Insert Email in Email Text Field        ${sign_in_page_email_text}
    Insert Password in Password Text Field  ${sign_in_page_password_text}
    Click on Sign In Submit Button
