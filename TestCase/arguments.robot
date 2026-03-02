*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/resources.robot

*** Variables ***
${url}  https://www.flipkart.com
${browser}      chrome

*** Test Cases ***
tc_001
    ${page_title}=  broser_init     ${url}      ${browser}
    log to console    ${page_title}
    log     ${page_title}


