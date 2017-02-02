*** Settings ***
Documentation     Alert messages.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Alert messages are shown to user
    Given user has authenticated to system
    When user adds alert messages
    Then all alert messages should be visible

Alert messages are removed on sign-out
    Given alert messages are visible in UI
    When user does log-out
    Then alert messages are removed

*** Keywords ***
Click alert message
    [Arguments]    ${name}
    Click Element    xpath=//ngb-tabset//button[text()=${name}]

User adds alert messages
    User clicks test page link
    Click tab    "Alerts"
    Click alert message    "Success message"
    Click alert message    "Info message"
    Click alert message    "Warning message"
    Click alert message    "Error message"

All alert messages should be visible
    Alert messages count is    4

Alert messages are removed
    Alert messages count is    0

Alert messages are visible in UI
    User has authenticated to system
    User adds alert messages
    All alert messages should be visible
