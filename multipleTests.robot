*** Settings ***
Library    SeleniumLibrary
Resource   cloudCredentials.robot
Suite Teardown   Suite shutdown


*** Keywords ***
Suite shutdown
     Close All Browsers
Start session
     ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
     Call Method     ${options}	set_capability	digitalai:accessKey	${accessKey}
     Call Method     ${options}	set_capability	experitest:testName	Robot - Demo website test
     Create Webdriver	Remote	command_executor=${cloudUrl}	options=${options}

Demo test
    Start session
    Go To	https://demo-bank.ct.digital.ai
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

*** Test Cases ***
Test case 1
    Demo test

Test case 2
    Demo test

Test case 3
    Demo test