*** Settings ***
Documentation       Keywords using for common Keywords

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot
Resource            SeleniumSupport.resource

*** Keywords ***
Go to main page
    SeleniumSupport.Create Selenium Web Driver
    SeleniumLibrary.Go To   ${MAIN_UNIV_PAGE_URL}
    SeleniumLibrary.Wait Until Page Contains    My Courses & Promo Codes
