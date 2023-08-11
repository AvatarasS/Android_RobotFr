*** Settings ***

Library    AppiumLibrary

Resource   ../../Resources/android_res/Android.resource
Resource   ../../Resources/android_res/ConfigManagement.resource

Suite Setup         ConfigManagement.Default Suite Setup

Force Tags          03_001     run_all_android      run_all

*** Test Cases ***

Login and Logout Positive
    Open Chat21 App
    Sign In With Credentials    taras.ivanov@gmail.com      MemasM2000
    Go To Profile Tab
    Logout User
    Verify User Logout
