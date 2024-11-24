*** Settings ***
Documentation        Tudo deve começar neste arquivo
Library    AppiumLibrary
Library    libs/mongo.py

Resource     screens/login.resource
Resource    screens/tasks.resource

*** Keywords ***
Start session

        Open Application    remote_url=http://localhost:4723
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissons=true
    ...    app=${EXECDIR}/apps/markx.apk

    Wait Until Page Contains    Endereço IP da Api

Finish session
    Capture Page Screenshot
    Close Application