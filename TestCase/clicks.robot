*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Tc_001
    open browser    https://www.amazon.in/       Chrome
    maximize browser window
    sleep    3
    open context menu    xpath://a[@id='nav-logo-sprites']
    sleep    3

    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    3

    go to   https://www.globalsqa.com/demo-site/draganddrop/
    maximize browser window
    select frame    class:demo-frame
    drag and drop    xpath://img[@alt='The chalet at the Green mountain lake']      xpath://div[@id='trash']
    sleep    3
