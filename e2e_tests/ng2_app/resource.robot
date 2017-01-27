*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}            localhost:3002
${BROWSER}           Chrome
${DELAY}             0

${VALID USER}        test
${VALID PASSWORD}    password
${LOGIN URL}         http://${SERVER}/#/login
${LOGOUT URL}        http://${SERVER}/#/logout
${WELCOME URL}       http://${SERVER}/#/home
${TITLE}             Draal App Playground using Angular2

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Location Should Contain    ${LOGIN URL}

Open Page
    [Arguments]    ${url}
    Go To     ${url}

Go To Login Page
    Open Page    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    xpath=//input[@type="text" and @name="username"]    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    xpath=//input[@type="password" and @name="password"]    ${password}

Submit Credentials
    Click Button    xpath=//form//button

Home Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    ${TITLE}

User Has Authenticated To System
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    Home Page Should Be Open

User Is Redirected To Login Page
    Login page should be open
