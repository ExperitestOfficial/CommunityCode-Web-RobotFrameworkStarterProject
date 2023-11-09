*** Settings ***
Library    SeleniumLibrary
Resource   cloudCredentials.robot
Suite Teardown   Suite shutdown

*** Variables ***
${browserName}  browserName:chrome
${testName}   testName:Robot - Demo website test
${desiredCapabilities}  accessKey:${accessKey}, ${browserName}, ${testName}

*** Keywords ***
Suite shutdown
     Close All Browsers

*** Test Cases ***
Demo test
    Open Browser	https://demo-bank.ct.digital.ai	remote_url=${cloudUrl}	desired_capabilities=${desiredCapabilities}
    ${"Username"}  set variable    xpath://*[@data-auto='username']//input
    input text  ${"Username"}  company
    ${"Password"}  set variable    xpath://*[@data-auto='password']//input
    input text  ${"Password"}  company
    Click Element  xpath=//*[@data-auto='login']
    Click Element	xpath=//*[@data-auto='transfer-funds']
    ${"Name"}  set variable    xpath://input[@name='NAME']
    input text  ${"Name"}  John
    ${"Phone"}  set variable    xpath://input[@name='PHONE']
    input text  ${"Phone"}  1-234-5678
    ${"Amount"}  set variable    xpath://input[@name='AMOUNT']
    input text  ${"Amount"}  1000
    Click Element	xpath=//*[@data-auto='country']
    Click Element	xpath=//*[text()='India']
    Click Element	xpath=//*[@data-auto='transfer-button']