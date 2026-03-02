*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_001
    open browser    https://www.google.com/     chrome
    maximize browser window

    open browser    https://www.bing.com/       chrome
    maximize browser window

    open browser    https://www.flipkart.com/      chrome
    maximize browser window

    switch browser    1
    ${title}=   get title
    log to console    ${title}

    switch browser    2
    ${title_1}=   get title
    log to console    ${title_1}

    switch browser    3
    ${title_2}=   get title
    log to console    ${title_2}



