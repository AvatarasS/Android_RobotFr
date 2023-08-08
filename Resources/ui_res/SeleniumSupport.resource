*** Settings ***
Documentation       Helper Keywords For Selenium Web Browser

Library             Collections
Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot


*** Keywords ***
Create Selenium Web Driver
    [Timeout]    60s
    [Arguments]    ${fake_media}=${False}    ${network_listener}=${False}    ${download_directory}=${False}
    ${chromeOptions}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chromeOptions}    add_argument    --disable-popup-blocking
    Call Method    ${chromeOptions}    add_argument    --ignore-certificate-errors

    ${headless}=    Get Variable Value    ${HEADLESS}    ${False}
    IF    ${headless} == ${True}
        Call Method    ${chromeOptions}    add_argument    --headless
    END

    IF    '${download_directory}'!='${False}'
        ${prefs}=    Create Dictionary    download.default_directory=${download_directory}
        Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    END

    Create Webdriver    Chrome    options=${chromeOptions}

    SeleniumLibrary.Set Window Size    1920    1080
