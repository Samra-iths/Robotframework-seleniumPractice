*** Settings ***
#Suite Setup     we are at the login page
Documentation    customer service
Library    SeleniumLibrary

*** Variables ***
${url}    https://automationplayground.com/crm/
${sign}    //a[@id='SignIn']
${username}    user@gmail.com
${password}    12345

*** Test Cases ***
Test login

    Given We Are At The Login Page
    When Give Valid Username And Password       ${username}    ${password}
    Then The User Should Be Logged In

*** Keywords ***
We Are At The Login Page
    [Documentation]    opening the sign in page automation playground
    [Tags]    We Are At The Login Page
    Open Browser    browser=chrome
    Go To    ${url}
    Click Link    ${sign}
    Wait Until Element Is Visible    //h2[normalize-space()='Login']

Give valid username and password
    [Documentation]    Giving Username and Password
    [Tags]    Give valid username and password
    [Arguments]    ${user}    ${pass}
    Log    username:${user}
    Log    password:${pass}
    Input Text    //input[@id='email-id']    ${user}
    Input Password    //input[@id='password']    ${pass}
    Click Button    //button[@id='submit-id']
    
The user should be logged in
    Set Selenium Speed    1
    Wait Until Element Is Visible    //h2[normalize-space()='Our Happy Customers']
            


