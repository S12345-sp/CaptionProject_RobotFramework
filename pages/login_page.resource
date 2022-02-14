*** Settings ***
Documentation   this file handles all the operation in the login page of openemr

Resource    ../base/common_functionality.resource

*** Variables ***
${LOGIN_LOCATOR}    xpath=/html/body/header/nav/ul/li[2]/a
${USERNAME_LOCATOR}     id=username
${PASSWORD_LOCATOR}     id=password
${LOGINSUBMIT_LOCATOR}        xpath=//*[@id="login-form"]/fieldset/div[4]/button


*** Keywords ***
Click Login
        Click Element    ${LOGIN_LOCATOR}

Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}   ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Loginsubmit
    Click Element    ${LOGINSUBMIT_LOCATOR}