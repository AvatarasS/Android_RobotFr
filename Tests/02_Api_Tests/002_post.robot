*** Settings ***
Documentation       API test

Library             RequestsLibrary
Library             JSONLibrary

Resource            ../../Resources/ui_res/TestConfigManagement.resource

Suite Setup         TestConfigManagement.Default Suite Setup
Suite Teardown      Suite Teardown

Force Tags          02_002     run_all_API     run_all


*** Test Cases ***
Post data
    Create Session      sessionPost      ${API_URL}
    ${ENDPOINT}=        Set Variable    /api/users
    ${header}           Create Dictionary       Content-type=application/json; charset=UTF-8
    ${body}             Create Dictionary        name=foo     job=bar
    ${RESPONSE}         POST On Session    sessionPost   ${API_URL}${ENDPOINT}    headers=${header}     json=${body}
    Status Should Be    201
    Should Be Equal     ${RESPONSE.json()}[name]          foo
    Log                 ${RESPONSE.json()}

*** Keywords ***
Suite Teardown
    SeleniumLibrary.Close All Browsers

