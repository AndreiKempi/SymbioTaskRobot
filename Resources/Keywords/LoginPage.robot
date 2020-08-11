*** Settings ***

Resource    Common.robot

*** Variables ***

${UserNameTextBox}      //input[@id='txtUsername']
${PasswordTextBox}      //input[@id='txtPassword']
${LoginButton}          //input[@id='btnLogin']
${ErrorMesage}          //span[@id='spanMessage']

*** Keywords ***

Input user name
    [Arguments]  ${userName}
    input text  ${UserNameTextBox}  ${userName}

Input password
    [Arguments]  ${password}
    input text  ${PasswordTextBox}  ${password}

Click login button
    click element  ${LoginButton}

Wait for error
    wait until page contains element  ${ErrorMesage}
