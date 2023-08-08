*** Settings ***
Documentation       Keywords using for To do List form

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot


*** Keywords ***
Click To do List Button
    Click Element    ${TO_DO_LIST_BTN_LOCATOR}
    Switch Window    WebDriver | To Do List
    Page Should Contain    TO-DO LIST

Delete Practice Magic
    Mouse Over    ${TRASH_BTN}
    Click Element    ${TRASH_BTN}
    Wait Until Page Does Not Contain    Practice magic
    Page Should Not Contain    Practice magic

Add new ToDo
    Input Text    ${INPUT_NEW_TODO}     Learn RobotFramework
    Press Keys   ${INPUT_NEW_TODO}   ENTER
    Page Should Contain    Learn RobotFramework