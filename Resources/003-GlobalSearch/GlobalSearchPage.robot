*** Settings ***
Library     SeleniumLibrary
Resource    ./GlobalSearchKeywords.robot

*** Keywords ***
Search For Product Through Global Search
    [Arguments]    ${product_name}=Samsung Galaxy A54
    GlobalSearchKeywords.Insert Product Name To Search For    ${product_name}
    GlobalSearchKeywords.Click on Enter on Key Board To Navigate To Product
