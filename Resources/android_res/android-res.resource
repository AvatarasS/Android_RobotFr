*** Settings ***
Library    AppiumLibrary


*** Keywords ***

Open Chat21 App
    Open Application     ${HOST_MAIN}   platformName=Android    deviceName=${DEVICE_NAME}    appPackage=${21CHAT_APP_PACKAGE}   appActivity=${21CHAT_APP_ACTIVITY}   automationName=UiAutomator2
    Run Keyword          Bypass Android 14 Alert


Bypass Android 14 Alert
    Wait Until Page Contains Element    ${ANDROID14_CONTINUE_BUTTON}
    Click Element                       ${ANDROID14_CONTINUE_BUTTON}
    Wait Until Page Contains Element    ${ANDROID14_OK_BUTTON}
    Click Element                       ${ANDROID14_OK_BUTTON}

Sign In with credentials
    [Arguments]    ${EMAIL}     ${PASSWORD}
    Input Email         ${EMAIL}
    Input Password      ${PASSWORD}
    Submit Login
    Verify Logining

Input Email
    [Arguments]    ${EMAIL}
    Wait Until Page Contains Element       ${LOGIN_EMAIL_FIELD}
    Input Text    ${LOGIN_EMAIL_FIELD}     ${EMAIL}

Input Password
    [Arguments]    ${PASSWORD}
    Input Text    ${LOGIN_PASSWORD_FIELD}   ${PASSWORD}

Submit login
    Click Element    ${LOGIN_BTN}

Verify logining
     Wait Until Page Contains Element    ${MAIN_HOME_TAB}   10000

Go To Profile Tab
    Click Element    ${MAIN_PROFILE_TAB}
    Wait Until Page Contains Element    ${LOGOUT_BTN}

Logout User
    Click Element    ${LOGOUT_BTN}

Verify User Logout
    Wait Until Page Contains Element    ${LOGIN_EMAIL_FIELD}

