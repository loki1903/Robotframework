*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
broser_init
    [Arguments]    ${tc_url}    ${tc_browser}
    open browser    ${tc_url}   ${tc_browser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}