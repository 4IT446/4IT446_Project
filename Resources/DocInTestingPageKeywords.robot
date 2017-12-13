*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Documentation in Testing Page.

*** Keywords ***

Go to Documentation in testing page

    wait until page contains element  ${documentation_in_testing}
    click element  ${documentation_in_testing}
    location should be  ${documentation_in_testing_url}

Check the respond functionality
    wait until page contains element  ${respond_button}
    click element  ${respond_button}
    wait until page contains element  ${comment_field}

