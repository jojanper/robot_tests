*** Settings ***
Documentation     User does sign-out.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
User sign-out
    Given user has authenticated to system
    When user does log-out
    Then user is redirected to login page

*** Keywords ***
User does log-out
    Open page    ${LOGOUT URL}
