*** Settings ***
Resource              login_credentials.robot

*** variables ***

${dashboard}          Dashboard
${click_bedroom}      xpath=.//*[@id='side-menu']/li[3]/a
${confirm_bedroom}    Bedroom Status

${logout_dropdown}    xpath=//a[@class='dropdown-toggle']
${click_logout}       xpath=//i[@class='fa fa-sign-out fa-fw']
${confirm_login}      Login




*** keywords ***
go_bedroom
                      Click Element                               ${click_bedroom}
                      Wait Until Page Contains                    ${confirm_bedroom}

perform_logout
                      Click Element                               ${logout_dropdown}
                      Click Element                               ${click_logout}
                      Wait Until Page Contains                    ${confirm_login}


                      
