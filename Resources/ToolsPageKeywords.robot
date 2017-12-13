*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Tools Page.

*** Keywords ***

Go to Tools page

    wait until page contains element  ${tools}
    click element  ${tools}
    location should be  ${tools_url}

