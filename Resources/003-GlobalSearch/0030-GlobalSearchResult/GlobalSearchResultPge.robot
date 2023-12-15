*** Settings ***
Library     SeleniumLibrary
Resource    ./GlobalSearchResultKeywords.robot

*** Keywords ***

Navigate To Checout Page Through Shop Search Result
    [Arguments]    ${product_name}=Samsung Galaxy A54
    GlobalSearchResultKeywords.Verify That product is Successfully appeared     ${product_name}
    GlobalSearchResultKeywords.Click on Add To Cart Button
    GlobalSearchResultKeywords.Verify That Product is Successfully Added To The Cart
    GlobalSearchResultKeywords.Click on Go To Basket Button