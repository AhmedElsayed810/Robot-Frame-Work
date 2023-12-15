*** Settings ***
Library       SeleniumLibrary
Resource    ./AddressKeywords.robot

*** Keywords ***
Add New Adress
    [Arguments]    ${adress_full_name_field_text}=Ahmed Elsayed     ${adress_mobile_number_field_text}=01278707896    ${adress_street_name_text}=hosary    ${adress_building_name_text}=Altarek    ${adress_landmark_name_text}=farouk
    AddressKeywords.Verify That Adress Page Is Successfully Loaded
    AddressKeywords.Select Country
    AddressKeywords.Insert Full Name        ${adress_full_name_field_text}
    AddressKeywords.Insert Mobile Number    ${adress_mobile_number_field_text}
    AddressKeywords.Insert Street Name      ${adress_street_name_text}
    AddressKeywords.Insert Building Name    ${adress_building_name_text}
    AddressKeywords.Select City
    AddressKeywords.Insert District Name
    AddressKeywords.Insert Landmark Name    ${adress_landmark_name_text}
    AddressKeywords.Click on Add Adress Button