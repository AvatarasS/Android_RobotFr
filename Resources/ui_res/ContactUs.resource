*** Settings ***
Documentation       Keywords using for contact us form

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot


*** Keywords ***
Click Contact Us Button
    Click Element    ${CONTACT_US_BTN_LOCATOR}
    Switch Window    WebDriver | Contact Us
    SeleniumLibrary.Wait Until Page Contains    CONTACT US

Fill First Name field
    Input Text  ${FIRST_NAME_FIELD}  ${CONTACT_US_DATA["USER_NAME"]}
    Textfield Value Should Be    ${FIRST_NAME_FIELD}  ${CONTACT_US_DATA["USER_NAME"]}

Fill Last Name field
    Input Text  ${LAST_NAME_FIELD}  ${CONTACT_US_DATA["USER_LAST_NAME"]}
    Textfield Value Should Be    ${LAST_NAME_FIELD}  ${CONTACT_US_DATA["USER_LAST_NAME"]}

Fill Email Address field
    Input Text  ${EMAIL_FIELD}  ${CONTACT_US_DATA["USER_EMAIL"]}
    Textfield Value Should Be    ${EMAIL_FIELD}  ${CONTACT_US_DATA["USER_EMAIL"]}

Fill Comments Textarea
    Input Text    ${COMMENTS_FIELD}     ${CONTACT_US_DATA["COMMENT_FIELD"]}
    Textarea Value Should Be    ${COMMENTS_FIELD}  ${CONTACT_US_DATA["COMMENT_FIELD"]}

Click Submit Button
    Click Button    ${SUBMIT_BTN}
    Page Should Contain    ${CONTACT_US_DATA["SUBMITTING_MESSAGE"]}