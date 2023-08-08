*** Settings ***
Documentation

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot
Resource            ../../Resources/ui_res/Common.resource
Resource            ../../Resources/ui_res/ToDoList.resource
Resource            ../../Resources/ui_res/TestConfigManagement.resource

Suite Setup         TestConfigManagement.Default Suite Setup
Suite Teardown      Suite Teardown

Force Tags          01_002     run_all_e2e     run_all


*** Test Cases ***
Adding to the To do List Happy flow
    Go To Main Page
    Click To do List Button
    Add new ToDo

*** Keywords ***
Suite Teardown
    SeleniumLibrary.Close All Browsers