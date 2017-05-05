*** Settings ***
Resource            environment_credentials.robot


*** Keywords ***
Setup
                    Set Environment Variable                       ${chrome_webdriver_name}    ${chrome_webdriver_location}
                    Open Browser                                   ${base_url}                 ${chrome_browser}
                    Maximize Browser Window
                    Set Selenium Speed                             ${selenium_speed}
                    Set Selenium Timeout                           ${selenium_timeout}
                    Delete All Cookies
                    Wait Until Page Contains                       ${confirm_login}

Teardown
                    Close All Browsers
