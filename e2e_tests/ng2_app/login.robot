*** Settings ***
Documentation     Login user to system.
...
...               Use BDD style for tests.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Unauthenticated User Access
    Given browser is opened to login page
    When unauthenticated user opens home page
    Then user is redirected to login page

Valid Login
    Given browser is opened to login page
    When user "${VALID USER}" logs in with password "${VALID PASSWORD}"
    Then home page should be open

*** Keywords ***
Unauthenticated user
    Open Browser To Login Page

Browser is opened to login page
    Open browser to login page

Unauthenticated user opens home page
    Open page    ${WELCOME URL}

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials
