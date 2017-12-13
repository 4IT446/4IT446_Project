*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Automated Testing Page.

*** Keywords ***

Go to Automated testing page

    wait until page contains element  ${automated_testing}
    click element  ${automated_testing}
    location should be  ${automated_testing_url}

