*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc_001
    open browser    https://demo.automationtesting.in/Windows.html      chrome
    maximize browser window
    click element    xpath://*[@id="Tabbed"]/a
    sleep    3
    switch window    title=Selenium
    sleep    3
    click element    xpath://*[@id="main_navbar"]/ul/li[3]/a
    sleep    3