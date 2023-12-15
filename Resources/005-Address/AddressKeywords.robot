*** Settings ***
Library       SeleniumLibrary
Resource    ../../Resources/000-Common/CommonKeyWords.robot
Resource    ./AddressLocators.robot
Resource    ./AddressAssertions.robot

*** Keywords ***
Verify That Adress Page Is Successfully Loaded
    wait until page contains                                  ${ADRESS_ADD_NEW_ADRESS_TEXT}

Select Country
    select from list by label                                 ${ADRESS_COUNTRY_LIST_ICON}      ${ADRESS_COUNTRY_LIST_ICON_EGYPT_SELECTION}

Insert Full Name
    [Arguments]    ${adress_full_name_field_text}
    Run Keyword until Success    seleniumlibrary.input text   ${ADRESS_FULL_NAME_FIELD}        ${adress_full_name_field_text}

Insert Mobile Number
    [Arguments]    ${adress_mobile_number_field_text}
    Run Keyword until Success    seleniumlibrary.input text   ${ADRESS_MOBILE_NUMBER_FIELD}    ${adress_mobile_number_field_text}

Insert Street Name
    [Arguments]    ${adress_street_name_text}
    Run Keyword until Success    seleniumlibrary.input text   ${ADRESS_STREAT_NAME_FIELD}      ${adress_street_name_text}

Insert Building Name
    [Arguments]    ${adress_building_name_text}
    Run Keyword until Success    seleniumlibrary.input text   ${ADRESS_BULDING_NAME_FIELD}     ${adress_building_name_text}

Select City
    select from list by label                                 ${ADRESS_CITY_NAME_FIELD}        ${ADRESS_CITY_NAME_FIELD_CITY_SELECTION}

Insert District Name
    select from list by label                                 ${ADRESS_DISTRICT_FIELD}         ${ADRESS_DISTRICT_FIELD_SELECTION}

Insert Landmark Name
    [Arguments]    ${adress_landmark_name_text}
    Run Keyword until Success    seleniumlibrary.input text   ${ADRESS_LANDMARK_FIELD}         ${adress_landmark_name_text}

Click on Add Adress Button
    Run Keyword until Success    seleniumlibrary.click element ${ADRESS_ADD_ADRESS_BUTTON}