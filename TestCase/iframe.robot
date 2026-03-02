*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
iframe_test
    open browser    https://www.letskodeit.com/practice     chrome
    maximize browser window

    sleep    3
    select frame    iframe-name
    click link    ALL COURSES

    sleep    3
    unselect frame
    sleep    3

    click element    class:dropbtn

