*** Settings ***

Resource  ../Resources/Keywords.robot

Suite Setup         Open browser  ${BlankPage}  ${DefaultBrowser}
Test Setup          Go to website
Test Teardown       run keywords  Run keyword if test failed  LogOut
                    ...  AND  Go to balnk page
Suite Teardown      Close All Browsers

Test Template       Invalid user name or password sholud fail login

Force Tags          Login

*** Test Cases ***

empty user name         ${EMPTY}    ${ValidPassword}
empty password          ${ValidUserName}    ${EMPTY}
empty both              ${EMPTY}    ${EMPTY}
invalid user name       invalid     ${ValidPassword}
invalid password        ${ValidUserName}    invalid
invalid both            invalid     invalid
user name wrong case    ${ValidUserName.upper()}   ${ValidPassword}
password wrong case     ${ValidUserName}    ${ValidPassword.upper()}
both wrong case         ${ValidUserName.upper()}   ${ValidPassword.upper()}

*** Keywords ***

Invalid username or password sholud fail login
    [Arguments]  ${UserName}    ${Password}
    Input user name  ${UserName}
    Input password  ${Password}
    Click login button
    Wait for error




