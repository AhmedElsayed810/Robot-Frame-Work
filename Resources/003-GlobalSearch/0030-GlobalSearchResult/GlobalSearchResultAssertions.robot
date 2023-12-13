*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SEARCH_RESULT_ITEM_ADDED_TO_CART_LABEL}     //div[@class='s-widget-container s-spacing-small s-widget-container-height-small celwidget slot=MAIN template=SEARCH_RESULTS widgetId=search-results_16']//strong[@class='a-size-small'][normalize-space()='Item added']