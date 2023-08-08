*** Settings ***
Documentation       API test

Library             RequestsLibrary
Library             JSONLibrary

Resource            ../../Resources/ui_res/TestConfigManagement.resource

Suite Setup         TestConfigManagement.Default Suite Setup
Suite Teardown      Suite Teardown

Force Tags          02_001     run_all_API     run_all


*** Test Cases ***
Get data
    Create Session      sessionGet      ${API_URL}
    ${ENDPOINT}=        Set Variable    /api/users?page=2
    ${RESPONSE}=        GET    ${API_URL}${ENDPOINT}
    Log                 ${RESPONSE.status_code}
    ${CONTENT}=         Convert String To Json     ${RESPONSE.content}
    Log                 ${CONTENT}[data][0][email]
    Log                 ${RESPONSE.headers}
    Status Should Be    200
    Log                 ${RESPONSE}
    ${TOTAL_PAGES}=     Get Value From Json    ${RESPONSE.json()}   total_pages
    Log                 ${TOTAL_PAGES}



*** Keywords ***
Suite Teardown
    SeleniumLibrary.Close All Browsers