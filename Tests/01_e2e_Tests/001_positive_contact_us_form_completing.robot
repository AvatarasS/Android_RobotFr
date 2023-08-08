*** Settings ***
Documentation       Execute Happy Flow Contact Us form submitting

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot
Resource            ../../Resources/ui_res/Common.resource
Resource            ../../Resources/ui_res/ContactUs.resource
Resource            ../../Resources/ui_res/TestConfigManagement.resource

Suite Setup         TestConfigManagement.Default Suite Setup
Suite Teardown      Suite Teardown

Force Tags          01_001     run_all_e2e     run_all


*** Test Cases ***
Natural Person Submitting ContactUs form Happy Flow
    Go To Main Page
    Click Contact Us Button
    Fill First Name field
    Fill Last Name field
    Fill Email Address field
    Fill Comments Textarea
    Click Submit Button

*** Keywords ***
Suite Teardown
    SeleniumLibrary.Close All Browsers
