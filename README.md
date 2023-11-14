# CommunityCode-Web-RobotFrameworkStarterProject
The Robot framework project enables you to quickly run tests using easy syntax and utilizing human-readable keywords.\
It is implemented using Python which is also the primary language to extend it.\
We are using the SeleniumLibrary which is a web testing library for Robot Framework that utilizes the Selenium tool internally.
## Setting Up the Project

To set up the project:
1. Clone the project by running the following:
   ```
   git clone https://github.com/ExperitestOfficial/CommunityCode-Web-RobotFrameworkStarterProject.git
   cd CommunityCode-Web-RobotFrameworkStarterProject
   ```   
1. Set up authentication by updating the following parameters in [cloudCredentials.robot](cloudCredentials.robot):
    * cloudUrl - Url for the cloud the test would run in. For example, https://company.experitest.com/
    * accessKey -  Personal authentication. See [Obtaining Access Key](https://docs.digital.ai/bundle/TE/page/obtaining_access_key.html) to learn how to obtain an access key.
    
3. Make sure that Python 3 installed.
## Install Robot Framework globally
Open your terminal and run:\
    ```
    pip install robotframework
    ```\
    ```
    pip install --upgrade robotframework-seleniumlibrary
    ```
## Desired Capabilities
In this example we run a test on chrome using Chrome Options.\
See [The supported browsers](https://www.selenium.dev/documentation/webdriver/browsers/) to run the test on another browser.


Continuous Cloud Testing expands Selenium's capabilities and allows better control over your test.

See [Capabilities In Selenium Tests](https://docs.digital.ai/bundle/TE/page/capabilities_in_selenium_tests.html) to learn how to customize the desired capabilities for your tests.
## Running Tests

To run the tests in this project, run the following on the command line:

```
robot test.robot
```
## How to enable parallel execution
Pabot is a parallel test runner for the Robot framework. Pabot lets you run Robot tests in parallel at test-level as well as test-suite level.\
To install Pabot run the following command:
```
 pip install -U robotframework-pabot
```
For parallel execution run the below command:
```
 pabot --verbose --testlevelsplit --processes <num_of_processes> <path_to_tests> 
``` 
The file [multipleTests.robot](multipleTests.robot) contains three test cases, each test case runs the demo website test.\
The command to run the 3 test cases in parallel is: pabot --verbose --testlevelsplit --processes 3 multipleTests.robot

## Documentation
To find out more about Continuous Cloud Testing usage, features, and best practices, visit our online [documentation](https://docs.digital.ai/bundle/TE/page/test_execution_home.html).

## Support
If you encounter an issue that is not covered here or in our online documentation, contact us at [support@digital.ai](mailto:support@digital.ai).




