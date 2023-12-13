*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/000-Common/CommonKeyWords.robot
Resource    ../Resources/002-SignIn/SignInPage.robot
Resource    ../Resources/001-Header/HeaderPage.robot

Suite Setup             CommonKeyWords.Begin Web Test
Suite Teardown          CommonKeyWords.End Web Test

*** Test Cases ***
Check That User able To Sign In Via Email
    HeaderPage.Navigate To Sign In Page
    SignInPage.Sign In Via Email
    sleep    5