*** Variables ***

#common
${logo} =  //*[@href="http://testovanisoftwaru.cz/"]
${logo_text} =  Testování softwaru
${captcha} =  //*[@id="captcha-obr"]
${static_ad} =  //*[@href="https://adexpert.cz/domena/testovanisoftwaru.cz"]
${non_ex_error} =  Not Found
${non_ex_error1} =  Apologies, but the page you requested could not be found. Perhaps searching will help.
${search_field} =  s
${search_submit} =  searchsubmit
${search_text} =  vodopadovy
${search_text_diakr} =  vodopádový
${waterfall_page} =  //*[@href="http://testovanisoftwaru.cz/manualni-testovani/modely-zivotniho-cyklu-softwaru/vodopadovy-model/"]
${spiral_page} =  //*[@href="http://testovanisoftwaru.cz/manualni-testovani/modely-zivotniho-cyklu-softwaru/spiralovy-model/"]
${lifecycle_models_page} =  //*[@href="http://testovanisoftwaru.cz/manualni-testovani/modely-zivotniho-cyklu-softwaru/"]
${dummy_comment} =  Ahoj
${dummy_name} =  Petr
${dummy_email} =  blabla@bla.com
${email_error} =  CHYBA: Zadejte prosím platnou emailovou adresu.
${error_back_button} =  //*[text()="« Zpět"]



#main page
${leave_a_comment} =  //*[@href="http://testovanisoftwaru.cz/testing/czechtest-2016-se-blizi/#respond"]
${czechtest_2016} =  //*[@href="http://testovanisoftwaru.cz/testing/czechtest-2016-se-blizi/"]
${comment_field} =  comment
${author_field} =  author
${email_field} =  email
${url_field} =  url
${submit_button} =  submit


#manual testing page
${manual_testing} =  //*[@href="http://testovanisoftwaru.cz/manualni-testovani/"]
${manual_testing_text} =  Manuální testování


#documentation in testing page
${documentation_in_testing} =  //*[@href="http://testovanisoftwaru.cz/dokumentace-v-testovani/"]
${documentation_in_testing_text} =  Dokumentace v testování
${respond_button} =  //*[@href="http://testovanisoftwaru.cz/dokumentace-v-testovani/?replytocom=1770#respond"]


#automated testing page
${automated_testing} =  //*[@href="http://testovanisoftwaru.cz/automatizovane-testovani/"]
${automated_testing_text} =  Automatizované testování


#tools page
${tools} =  //*[@href="http://testovanisoftwaru.cz/nastroje/"]
${tools_text} =  Nástroje


#contacts page
${contact} =  //*[@href="http://testovanisoftwaru.cz/kontakt/"]
${contact_text} =  Kontakt
${your_name_field} =  your-name
${your_email_field} =  your-email
${subject_field} =  your-subject
${message_field} =  your-message
${send_button} =  //*[@value="Odeslat"]
${contact_form_warning} =  Vyplňte prosím povinná pole
