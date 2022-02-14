*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser    url= https://mailchimp.com/     browser=edge     executable_path=${EXECDIR}/driver/msedgedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Click Element    xpath=/html/body/header/nav/ul/li[3]/a
    Input Text    id=email    parveen12@gmail.com
    Input Text    name=username    admin
    Input Text    id=new_password    Admin@123
    Click Element    id=create-account
    Close Browser

TC2
    Open Browser       browser=edge         executable_path=${EXECDIR}/driver/msedgedriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://mailchimp.com/
     Click Element    xpath=//*[@id="2FenEYhNGgc1nXLlZum9pB"]/div/div/div/div/div[2]/a
     Click Element    xpath=//*[@id="1RkqxGS13w5goqvKDNqUFa"]/div/div/nav/a[1]
     Click Element    xpath=//*[@id="1RkqxGS13w5goqvKDNqUFa"]/div/div/nav/a[2]
     Click Element    xpath=//*[@id="1RkqxGS13w5goqvKDNqUFa"]/div/div/nav/a[3]
     Close Browser