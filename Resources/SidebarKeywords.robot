*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Sidebar.

*** Keywords ***



Check the search functionality

    [Arguments]  ${search_text}
    wait until page contains element  ${search_field}
    input text  ${search_field}  ${search_text}
    click element  ${search_submit}

Check the search results

    wait until page contains element  ${waterfall_page}
    wait until page contains element  ${spiral_page}
    wait until page contains element  ${lifecycle_models_page}


