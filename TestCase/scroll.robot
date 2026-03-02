*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tc_001
    open browser    https://www.amazon.in/      chrome
    maximize browser window
    sleep    3
    #execute javascript    window.scrollTo(0,1500)
    #sleep    3

    #scroll element into view    xpath://a[normalize-space()='Facebook']
    #sleep    3

    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    3