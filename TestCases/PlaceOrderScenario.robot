*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/000-Common/CommonKeyWords.robot
Resource    ../Resources/002-SignIn/SignInPage.robot
Resource    ../Resources/001-Header/HeaderPage.robot
Resource    ../Resources/003-GlobalSearch/GlobalSearchPage.robot
Resource    ../Resources/003-GlobalSearch/0030-GlobalSearchResult/GlobalSearchResultPge.robot
Resource    ../Resources/004-Cart/CartPage.robot
Resource    ../Resources/004-Cart/0040-Checkout/CheckoutPage.robot
Resource    ../Resources/005-Address/AddressPage.robot

Suite Setup             CommonKeyWords.Begin Web Test
Suite Teardown          CommonKeyWords.End Web Test

*** Test Cases ***
Check That User able To Sign In Via Email
    HeaderPage.Navigate To Sign In Page
    SignInPage.Sign In Via Email

Check That User able To Search For Product
    GlobalSearchPage.Search For Product Through Global Search

Check That User able To Add Product To The Cart
    GlobalSearchResultPge.Navigate To Checout Page Through Shop Search Result

Check That User able To Navigate To Checkout Page To Place Order
    CartPage.Navigate To Checkout Page Through Cart Page

Check That User able To Add New Adress
    AddressPage.Add New Adress

Check That User Able To Activate Place Order Button
    CheckoutPage.Verifcation of Visability of Place Order Button

