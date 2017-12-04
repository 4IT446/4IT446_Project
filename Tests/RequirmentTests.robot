*** Settings ***
Library  Selenium2Library
Resource  ../Resources/CommonKeywords.robot

Suite Setup  Open test page
Suite Teardown  Close browser

#Run tests with: robot -d Results  Tests/RequirmentTests.robot

*** Test Cases ***

Requirments 1.2, 1.4, 1.5

    Check availability of tabs
    Check logo functionality
    Check availability of captcha




