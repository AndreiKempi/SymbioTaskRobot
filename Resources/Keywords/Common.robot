*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PageUrl}      https://opensource-demo.orangehrmlive.com/
${BlankPage}    about:blank
${DefaultBrowser}   chrome
${ValidUserName}  Admin
${ValidPassword}  admin123

*** Keywords ***

Go to website
    Go to  ${PageUrl}

Go to balnk page
    Go to  ${BlankPage}