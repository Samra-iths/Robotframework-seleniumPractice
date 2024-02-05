*** Settings ***
Suite Setup     we are at the login page
Documentation    customer service
Library    SeleniumLibrary

*** Variables ***
${url}    https://automationplayground.com/crm/login.html
${sign}    //a[@id='SignIn']
${username}    user@gmail.com
${password}    12345
${submit}     //button[@id='submit-id']

*** Test Cases ***
jkjk
*** Keywords ***
we are at the login page
    [Documentation]    opening the sign in page automation playground
    [Tags]    We Are At The Login Page

    Go To    ${url}    chrome
    Wait Until Element Is Visible    //h2[normalize-space()='Login']