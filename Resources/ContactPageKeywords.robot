*** Settings ***
Library  Selenium2Library
Resource  BrowserSettings.robot
Resource  Objects.robot

Documentation  This file contains high-level keywords that are written for Contact Page.

*** Keywords ***

Go to Contacts page

    wait until page contains element  ${contact}
    click element  ${contact}
    location should be  ${contact_url}

Check the captcha functionality

    #execute javascript  window.scroll (0,500)
    ${captcha_value} =  get element attribute  ${captcha}@src
    reload page
    ${captcha_value1} =  get element attribute  ${captcha}@src
    should not be equal  ${captcha_value}  ${captcha_value1}

Check the static ad functionality

    wait until page contains element  ${static_ad}
    click element  ${static_ad}
    location should be  ${static_ad_url}
    go back

Check the availability of contact form

    wait until page contains element  ${your_name_field}
    wait until page contains element  ${your_email_field}
    wait until page contains element  ${subject_field}
    wait until page contains element  ${message_field}
    wait until page contains element  ${captcha}
    wait until page contains element  ${send_button}

Check the contact form warnings

    click element  ${send_button}
    wait until page contains  ${contact_form_warning}
    input text  ${your_name_field}  ${search_text}
    click element  ${send_button}
    wait until page contains  ${contact_form_warning}
    clear element text  ${your_name_field}
    input text  ${your_email_field}  ${dummy_email}
    click element  ${send_button}
    wait until page contains  ${contact_form_warning}