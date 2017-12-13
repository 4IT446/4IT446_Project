*** Settings ***

Library  Selenium2Library
Resource  ../Resources/CommonKeywords.robot
Resource  ../Resources/ManualTestingPageKeywords.robot
Resource  ../Resources/DocInTestingPageKeywords.robot
Resource  ../Resources/AutomatedTestingPageKeywords.robot
Resource  ../Resources/ToolsPageKeywords.robot
Resource  ../Resources/ContactPageKeywords.robot
Resource  ../Resources/SidebarKeywords.robot
Resource  ../Resources/MainPageKeywords.robot

Documentation  This test suite covers the requirments that were chosen to be covered by automated testing.
#Run tests with: robot -d Results  Tests/RequirmentTests.robot

Suite Setup  Open test page
Suite Teardown  Close browser


*** Test Cases ***

Test logo
    [Tags]  1.1
    [Documentation]  Kontrola návratu na domovskou stránku

    Check the logo functionality

Test tabs
    [Tags]  1.2
    [Documentation]  Kontrola 5 sekcí v horni liste

    Check the availability of tabs
    Check the names of the tabs

Test static ad
    [Tags]  1.3
    [Documentation]  Kontrola existence reklamy v patičce

    Go to Manual testing page
    Check the static ad functionality
    Go to Documentation in testing page
    Check the static ad functionality
    Go to Automated testing page
    Check the static ad functionality
    Go to Tools page
    Check the static ad functionality
    Go to Contacts page
    Check the static ad functionality

Test non-existent page
    [Tags]  1.4
    [Documentation]  Kontrola zobrazeni strakny Not Found

    Check the non-existent page functionality

Test search
    [Tags]  2.1  2.2
    [Documentation]  Kontrola funkcnosti vyhledávání článků
                ...  Kontrola ignorování diakritiky pri vyhledavani

    Check the search functionality  ${search_text}
    Check the search results
    Check the search functionality  ${search_text_diakr}
    Check the search results

Test contact form
    [Tags]  3.1
    [Documentation]  Kontrola zobrazeni kontaktního formuláře

    Go to Contacts page
    Check the availability of contact form

Test captcha
    [Tags]  3.2
    [Documentation]  Kontrola funkcnosti CAPTCHA kontaktního formuláře

    Check the availability of contact form
    Check the captcha functionality

Test contact form warnings
    [Tags]  3.3
    [Documentation]  Kontrola pole email, jméno

    Check the availability of contact form
    Check the contact form warnings

Test leave a comment button
    [Tags]  4.1
    [Documentation]  Kontrola existence tlačítko „Leave a comment“

    Go to Main page
    Check the leave a comment button functionality


Test comment functionality
    [Tags]  4.2
    [Documentation]  Kontrola formulare komentářů

    Go to Main page
    Check the comment functionality  ${dummy_email}
    Check the comment was posted

Test respond functionality
    [Tags]  4.3
    [Documentation]  Kontrola moznosti odpověď na komentář

    Go to Documentation in testing page
    Check the respond functionality

Test email validation
    [Tags]  4.4
    [Documentation]  Overeni platnost e-mailové adresy pro komentovani

    Go to Main page
    Check the comment functionality  ${logo_text}
    Check the email error message



