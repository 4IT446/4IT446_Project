*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Main Page.

*** Keywords ***

Go to Main page

    wait until page contains element  ${logo}
    click element  ${logo}

Check the leave a comment button functionality

    wait until page contains element  ${leave_a_comment}
    click element  ${leave_a_comment}
    wait until page contains element  ${comment_field}

Check the comment functionality

    [Arguments]  ${dummy_email}
    wait until page contains element  ${czechtest_2016}
    click element  ${czechtest_2016}
    wait until page contains element  ${comment_field}
    wait until page contains element  ${author_field}
    wait until page contains element  ${email_field}
    wait until page contains element  ${url_field}
    ${a} =  get time
    set global variable  ${time}  ${a}
    input text  ${comment_field}  ${dummy_comment}${a}
    input text  ${author_field}  ${dummy_name}
    input text  ${email_field}  ${dummy_email}
    input text  ${url_field}  ${test_url}
    click element  ${submit_button}

Check the comment was posted

    reload page
    wait until page contains  ${dummy_comment}${time}
    wait until page contains  ${dummy_name}

Check the email error message

    wait until page contains element  ${error_back_button}
    wait until page contains  ${email_error}
