*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Manual Testing Page.

*** Keywords ***

Go to Manual testing page

    wait until page contains element  ${manual_testing}
    click element  ${manual_testing}
    location should be  ${manual_testing_url}

