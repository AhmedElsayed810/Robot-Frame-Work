*** Settings ***
Library     SeleniumLibrary
Resource    ./CommonVariables.robot

*** Variables ***
${BROWSER}    chrome
${BROWSER2}  edge
${URL}      https://www.amazon.eg/?language=en_AE

${COMMON_IMPLICIT_WAIT}     15
${COMMON_TIME_OUT}  30
${COMMON_LOAD_TIME_OUT}     13
${COMMON_SELENIUM_SPEED}    0.1
${RETRY}    5 x
${RETRY_INTERVAL}   1 s
${ALIAS}    main
${COMMON_CLOSE_POST_VIEW}   //i[@class='close-fullscreen-modal icon icon-close']
${COMMON_CLOSE_SUCCESS_MSG}    //a[@class='btn btn-outline-primary remove-action-success']