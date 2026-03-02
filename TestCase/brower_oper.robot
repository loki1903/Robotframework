*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc_001
    open browser    https://www.google.com      Chrome
    maximize browser window
    ${loc}=     get location
    log to console  ${loc}
    sleep    2

    go to    https://www.flipkart.com
    ${loc}=     get location
    log to console  ${loc}
    sleep    2

    go back
    ${loc}=     get location
    log to console  ${loc}
    sleep    2
