*** Settings ***
Documentation    Elementos e ações da tela de login

Library    AppiumLibrary



*** Variables ***

${API_IP}    192.168.0.8 
*** Keywords ***
Do login
    Input Text           xpath=//android.widget.EditText[@resource-id="apiIp"]    ${API_IP} 
    Click Element        xpath=//*[@resource-id="signInButton"]