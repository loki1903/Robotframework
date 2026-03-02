*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${Browser}  chrome

*** Test Cases ***
Test_case01
    open browser    ${url}  ${Browser}
    Dropdown_Test
    close browser



*** Keywords ***
Dropdown_Test
    maximize browser window
    ${time} =   get selenium timeout
    log to console    ${time}
    set selenium timeout    10 seconds
    wait until page contains    GUI Elementsdd      # if condition not true will wait for max = 5 sec
    ${speed} =  get selenium speed
    log to console    ${speed}
    set selenium speed    0.1 seconds


    select from list by value   id:country  germany
    select from list by index   id:country  6

    select from list by label    id:colors  Green
    select from list by label    id:colors  Blue

    unselect from list by label    id:colors  Green
    ${speed} =  get selenium speed
    log to console    ${speed}
