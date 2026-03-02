*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
Test_Radiobutton
    open browser    ${url}  ${browser}
    RadioButton_Test
    close browser

*** Keywords ***
RadioButton_Test
    maximize browser window
    set selenium speed    2seconds
    title should be    Automation Testing Practice
    select radio button    gender    female
    select checkbox    sunday
    unselect checkbox   sunday