*** Settings ***

Resource  ../Resources/Keywords.robot

Suite Setup         Open browser  ${BlankPage}  ${DefaultBrowser}
Test Setup          Go to website
Test Teardown       Go to balnk page
Suite Teardown      Close All Browsers

Force Tags          Login

*** Test Cases ***

User can login successfully using valid credentials
    Input user name  ${ValidUserName}
    Input password  ${ValidPassword}
    Click login button
    Dashboard page openned

