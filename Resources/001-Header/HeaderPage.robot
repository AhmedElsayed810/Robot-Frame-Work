*** Settings ***
Library     SeleniumLibrary
Resource    ./HeaderKeyWords.robot
*** Keywords ***
Navigate To Sign In Page
    verify That Header is Successfully Appear
    Click on Acount Icon
