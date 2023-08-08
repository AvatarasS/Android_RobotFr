*** Settings ***
Library     SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot


*** Keywords ***
Default Suite Setup
    Load env config variables

Default Suite Teardown
    SeleniumLibrary.Close All Browsers

Load env config variables
    ${ARGS_DATA}=    Get Variable Value    ${ENV}    TARAS
    Import Variables    ${CURDIR}/../../Config/ENV_E2E_CONFIG_${ARGS_DATA}.yml
