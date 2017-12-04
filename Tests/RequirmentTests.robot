*** Settings ***
Library  Selenium2Library
Resource  ../Resources/CommonKeywords.robot

Suite Setup  Open test page
Suite Teardown  Close browser

#Run tests with: robot -d Results  Tests/RequirmentTests.robot

*** Test Cases ***

1.1 Pozadavek
    Check availability of tabs
    Check logo functionality
    Check availability of captcha




