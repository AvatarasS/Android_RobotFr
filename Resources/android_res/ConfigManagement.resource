*** Settings ***
Library     AppiumLibrary


*** Keywords ***
Default Suite Setup
    Load env config variables

Load env config variables
    ${ARGS_DATA}=    Get Variable Value    ${ENV}    TARAS
    Import Variables    ${CURDIR}/../Config/ENV_ANDROID_CONFIG_${ARGS_DATA}.yml
