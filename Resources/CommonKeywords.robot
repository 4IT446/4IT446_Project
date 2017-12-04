*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot


*** Keywords ***
Open test page
    open browser  ${test_url}  ${browser}
    maximize browser window
    wait until page contains element  ${logo}

Check availability of tabs
    page should contain element  ${manual_testing}
    page should contain element  ${documentation_in_testing}
    page should contain element  ${automated_testing}
    page should contain element  ${tools}
    page should contain element  ${contact}

Check logo functionality
    click element  ${contact}
    location should be  ${test_url}kontakt/
    click element  ${logo}
    location should be  ${test_url}

Check availability of captcha
    click element  ${contact}
    location should be  ${test_url}kontakt/
    execute javascript  window.scroll(0,500)
    wait until page contains element  ${captcha}
    page should contain element  ${captcha}





