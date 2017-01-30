*** Settings ***
Documentation     Application layout.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Home page exists
    Given user has authenticated to system
    When user clicks home page link
    Then home page is opened

About page exists
    Given user has authenticated to system
    When user clicks about page link
    Then about page is opened

Test page exists
    Given user has authenticated to system
    When user clicks test page link
    Then test page is opened

*** Keywords ***
User clicks home page link
    Click header link    "Home"

User clicks about page link
    Click header link    "About"

User clicks test page link
    Click header link    "Test page"

Home page is opened
    Location Should Contain    ${WELCOME URL}

About page is opened
    Location Should Contain    ${ABOUT URL}

Test page is opened
    Location Should Contain    ${TEST URL}
