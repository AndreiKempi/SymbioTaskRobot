*** Settings ***

Resource    Common.robot

*** Variables ***

${WelomeMenu}           //a[@id='welcome']
${LogoutLink}           //a[@href='/index.php/auth/logout']

*** Keywords ***

Dashboard page openned
    wait until page contains element    ${WelomeMenu}
    location should contain     dashboard

LogOut
    click element  ${WelomeMenu}
    wait until element is visible  ${LogoutLink}
    click link  ${LogoutLink}

