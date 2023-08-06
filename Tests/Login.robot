*** Settings ***

Library    AppiumLibrary

Resource   ../Resources/load.robot
Resource   ../Resources/android-res.robot

Suite Setup         load.Default Suite Setup

*** Test Cases ***

Login and Logout Positive
    Open Chat21 App
    Sign In With Credentials    taras.ivanov@gmail.com      MemasM2000
    Go To Profile Tab
    Logout User
    Verify User Logout
