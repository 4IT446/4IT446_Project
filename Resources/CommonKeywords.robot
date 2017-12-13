*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot


*** Keywords ***

Open test page

    open browser  ${test_url}  ${browser}
    maximize browser window
    wait until page contains element  ${logo}

Check the availability of tabs

    page should contain element  ${manual_testing}
    page should contain element  ${documentation_in_testing}
    page should contain element  ${automated_testing}
    page should contain element  ${tools}
    page should contain element  ${contact}

Check the names of the tabs

    element should contain  ${manual_testing}  ${manual_testing_text}
    element should contain  ${documentation_in_testing}  ${documentation_in_testing_text}
    element should contain  ${automated_testing}  ${automated_testing_text}
    element should contain  ${tools}  ${tools_text}
    element should contain  ${contact}  ${contact_text}

Check the logo functionality

    click element  ${contact}
    location should be  ${contact_url}
    click element  ${logo}
    location should be  ${test_url}


Check the non-existent page functionality

    go to  ${test_url}bla
    page should contain  ${non_ex_error}
    page should contain  ${non_ex_error1}
    go back










