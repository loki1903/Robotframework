*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
alter_test
    open browser    https://testautomationpractice.blogspot.com/    Chrome
    maximize browser window
    click element   id:confirmBtn
    sleep    2
    handle alert    accept
    sleep    2
#    handle alert    dismiss
#    sleep    2
    #handle alert    LEAVE
