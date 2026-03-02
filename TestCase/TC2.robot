*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
${email_txt}  id:Email


*** Test Cases ***
Login_Test01
    open browser    ${url}   ${browser}
    Key_checkvisibility
    close browser



*** Keywords ***
Key_checkvisibility
    maximize browser window
    title should be    nopCommerce demo store. Home page title
    click link    class:ico-login
    element should be visible    ${email_txt}
    element should be enabled    ${email_txt}
    input text  ${email_txt}  abc@gmail.com
    sleep    5
    clear element text   ${email_txt}
    sleep    3

