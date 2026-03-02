*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link    class:ico-login
    input text    id:Email  abc@gmail.com
    input text    id:Password   abc
    click element    xpath://button[contains(@class, 'button-1 search-box-button')]
