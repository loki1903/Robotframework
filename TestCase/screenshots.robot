*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Tc_001
    open browser    https://www.orangehrm.com/     chrome
    maximize browser window


    capture element screenshot  xpath:/html/body/nav/div/a/img      E:/Robotframework/screenshots/logo.png
    capture page screenshot    E:/Robotframework/screenshots/page.png
