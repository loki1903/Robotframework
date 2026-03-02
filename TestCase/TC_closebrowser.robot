*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_browser
    open browser    https://www.facebook.com/  chrome
    maximize browser window

    open browser    https://www.flipkart.com/  chrome
    close browser
